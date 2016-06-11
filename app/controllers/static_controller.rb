class StaticController < ApplicationController
  # layout 'landing'

  def home
    render layout: 'landing'
  end

  def about
    render layout: 'landing'
  end

  def contact
      render layout: 'landing'
  end

  
end
