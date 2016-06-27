class WelcomeController < ApplicationController
  def index
  end

  def unregistered
  	render layout: "landing"
  end

  def payment_success
  	if @shopping_cart.payed?
  		cookies[:shopping_cart_id] = nil
  	else
  		redirect_to carrito_path
  	end
  end
end