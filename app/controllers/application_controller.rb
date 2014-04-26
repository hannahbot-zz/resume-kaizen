class ApplicationController < ActionController::Base
  include Pundit

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from Pundit::NotAuthorizedError do |exception|
    redirect_to root_url, alert: exception.message
  end

  before_action :authenticate_user!

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :password_confirmation, :current_password, :remember_me, :provider, :uid) }
  end

  def after_sign_in_path_for(resource)
    resumes_path
  end

end
