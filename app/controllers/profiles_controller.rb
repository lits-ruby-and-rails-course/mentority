class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile, only: [:show, :edit, :update]

  def new
    @profile = current_user.build_profile
  end

  def show
  end

  def edit 
  end

  def create
    @profile = current_user.build_profile(params[:profile])
    @profile.save
  end
 
  def update
    if @profile.update_attributes(params[:profile])
      flash[:notices] = ["Your profile was successfully updated"]
      redirect_to(@profile)
    else
      render "edit", :alert => "Error occured!"
    end
  end

  private

  def set_profile
    @profile = current_user.profile(params[:id])
  end

  def profile_params
    params.require(:user).permit(:email, :password, profile_attributes: [:first_name, :last_name, :birthday, :user_phone, :introduction])
  end

end 