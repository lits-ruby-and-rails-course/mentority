class PagesController < ApplicationController
  def index
    if user_signed_in?
      redirect_to profile_path(current_user)
    end
  end
end
