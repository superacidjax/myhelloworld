class ChargesController < ApplicationController

  expose(:user) { current_user }
  expose(:course) { Course.friendly.find(params[:course_id]) }
  expose(:charge, attributes: :charges_params)
  expose(:charges)

  def new
    session[:course_id] = params[:course_id]
  end

  def create
    self.course = Course.find(session[:course_id])

    if customer = Stripe::Customer.create(
      email: current_user.email,
      card: params["stripeToken"]
    )

      if charge = course.charges.create(
        amount: course.price,
        user_id: current_user.id,
        customer_id: customer.id,
        course_id: course.id,
        access_expiration_date: Date.today + 1.year,
        default_card: customer.default_card
        )
        debugger
        StripeRunnerJob.perform_now(charge.guid)
        redirect_to user_path(current_user)
      else
        flash.now[:alert] = "We're sorry, it look like we had a connection issue!
        Your card was NOT charged. Please try again!"
        render :new
      end
    end
  end

  private

  def charges_params
    params.require(:charge).permit(:course_id, :user_id, :amount, :customer_id,
      :access_expiration_date, :default_card)
  end
end
