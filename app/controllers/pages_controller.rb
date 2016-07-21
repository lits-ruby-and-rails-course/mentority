class PagesController < ApplicationController
  def index
     redirect_to admin_root_path and return  if user_signed_in?&&current_user.admin?
     redirect_to home_path if user_signed_in?
  end
  def home
  end
end
