class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :banned?

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def authenticate_admin_user!
     authenticate_user!
     redirect_to root_path unless current_user.admin?
  end

  protected
  def banned?
    if current_user.present? && current_user.banned?
      sign_out current_user
      redirect_to root_path, :notice => "You are banned from this site."
    end
  end

  def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up) do |u|
       u.permit([
         :first_name,
         :last_name,
         :email,
         :role,
         :password,
         :password_confirmation,
         profile_attributes: [:user_phone, :user_email, :birthday, :introduction]
         ])
       end
       devise_parameter_sanitizer.for(:sign_in) do |u|
       u.permit(:first_name,:last_name,:email,:password,:remember_me)
     end
   end
end
