class ProfilesController < ApplicationController
  before_action :authenticate_user!

  # def new
  #   @user = current_user
  #   @profile = @user.build_profile
  # end

  def show
    @profile = current_user.profile(params[:id])
    @profile_user = User.find_by(id: current_user.id)
  end

  # def edit
  #   @profile = current_user.profile(params[:id])
  # end
  #
  # def create
  #   @user = current_user
  #   @profile = @user.build_profile(params[:profile])
  #   @profile.user_id = @user.id
  #   @profile.save
  # end
  #
  # def update
  #   @profile = current_user.profile(params[:id])
  #   if @profile.update?
  #     flash[:notices] = ["Your profile was successfully updated"]
  #     redirect_to courses_path
  #   else
  #     render "edit", :alert => "Error occured!"
  #   end
  # end
end
