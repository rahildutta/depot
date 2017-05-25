class AdminController < ApplicationController
  def index
  	@total_order = Order.count
    @cart = Cart.find_by_id(session[:cart_id])
  end
end
