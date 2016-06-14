class WelcomeController < ApplicationController
  def index
  end

  def unregistered
  	render layout: "landing"
  end
end
