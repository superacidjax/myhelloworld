class ChargesController < ApplicationController

  expose(:user) { current_user }
  expose(:course) { Course.friendly.find(params[:course_id]) }
  expose(:charge, attributes: :charges_params)
  expose(:charges) { Charge.all.order("created_at DESC") }

  before_action :require_admin, except: [:new, :show, :create,
                                         :apply_discount_code, :calculate_discount_price]
  before_action :require_login

  def new
    session[:course_id] = params[:course_id]
    if session[:discount_code_id]
      @price = course.calculate_final_discounted_price(session[:discount_code_id])
    else
      @price = course.price
    end
  end

  def show
    self.charge = Charge.find_by_guid(params[:id])
    unless current_user.admin?
      redirect_to root_path unless charge.user == current_user
    end
  end

  def create
    session[:discount_code_id] = nil
    self.course = Course.find(session[:course_id])
    if charge = create_customer_and_charge(params, course)
      StripeRunnerJob.perform_now charge.guid
      flash[:success] = 'Thanks for your purchase!'
      redirect_to user_dashboard_path
    else
      charge_error
    end
  end

  def create_customer_and_charge(params, course)
    if customer = create_customer(params)
      create_charge(params, customer, course)
    end
  end

  def create_customer(params)
    Stripe::Customer.create(email: current_user.email, card: params["stripeToken"])
  end

  def create_charge(params, customer, course)
    course.charges.create(
      amount: params[:final_sale_price],
      user_id: current_user.id,
      customer_id: customer.id,
      course_id: course.id,
      default_card: customer.default_card,
      discount_code_id: params[:discount_code_id],
      course_price: course.price,
      access_expiration_date: Date.today + 1.year
    )
  end

  def charge_error
    flash.now[:alert] = "We're sorry, it look like we had a connection issue!
          Your card was NOT charged. Please try again!"
    render :new
  end

  def apply_discount_code
  end

  def calculate_discount_price
    if params[:discount_code].present?
      self.course = Course.find(session[:course_id])
      if discount_code = DiscountCode.find_by(discount_code: params[:discount_code])
        if discount_code.not_expired_or_cancelled?
          session[:discount_code_id] = discount_code.id
          flash[:success] = 'Discount applied!'
          redirect_to new_charge_path(course_id: course.id)
        else
          flash[:error] = 'That discount code has expired!'
          redirect_to new_charge_path(course_id: course.id)
        end
      else
        flash[:error] = 'Sorry, but that code was not found.'
        redirect_to new_charge_path(course_id: course.id)
      end
    end
  end

  private

  def charges_params
    params.require(:charge).permit(:course_id, :user_id, :amount, :customer_id,
                                   :access_expiration_date, :default_card)
  end
end
