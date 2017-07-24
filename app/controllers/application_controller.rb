class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :surname, :username, :email, :password, :remember_me, :avatar)}
  	devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password, :remember_me)}
  	devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :surname, :username, :about, :email, :password, :current_password, :remember_me, :avatar)}
  end
end
