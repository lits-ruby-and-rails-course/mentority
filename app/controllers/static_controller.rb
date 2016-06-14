class StaticController < ApplicationController
  # layout 'landing'

  def home
    render layout: 'landing'
  end

  def user_profile
  	render layout: 'landing'
  end
end
