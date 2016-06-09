class StaticController < ApplicationController
  # layout 'landing'

  def home
    render layout: 'landing'
  end
end
