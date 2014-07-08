class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :role
     devise_parameter_sanitizer.for(:sign_in) << :role
    devise_parameter_sanitizer.for(:account_update) << :role
  end


  def after_sign_in_path_for(resource)
   if user_signed_in? 
   	if current_user.role == 'waiter'

  	'/waiters/index'
 
	elsif current_user.role == 'chef'
  	"/chefs/index"
	elsif current_user.role == 'bartender'
	'/bartenders/index'
	elsif current_user.role == 'helper'
	'/helper/index'
	elsif current_user.role == 'admin'
	 '/managers/index'

	
end

end
 end
  def after_sign_up_path_for(resource)
  	
 if current_user.role == 'waiter'
  	'/waiters/index'
	elsif current_user.cargo == 'chef'
  	"/chefs/index"
	elsif current_user.role == 'bartender'
	"/bartenders/index"
	elsif current_user.role == 'helper'
	'/helper/index'
	elsif current_user.role == 'admin'
	 '/managers/index'
	
end

end

end
