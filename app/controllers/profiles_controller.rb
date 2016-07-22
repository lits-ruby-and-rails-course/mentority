class ProfilesController < ApplicationController
  # before_action :authenticate_user!

  def show
    @profile = current_user.profile(params[:id])
    @profile_user = User.find_by(id: current_user.id)
  end

end
