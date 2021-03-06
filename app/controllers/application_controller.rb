class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected
  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_in) {|u| u.permit(:login, :codigo)}
  	devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:email, :username, :password, :password_confirmation, :admin, :codigo)}  	
  	devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:password, :password_confirmation, :current_password, :codigo)}
  end
end
