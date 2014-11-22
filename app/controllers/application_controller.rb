class ApplicationController < ActionController::Base
  protect_from_forgery

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  private

  def not_authenticated
    redirect_to sign_in_path, notice: "Please login first"
  end

end
