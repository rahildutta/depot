class StoreController < ApplicationController
	skip_before_action :authorize
  def index
    current_user
    @products = Product.order(:title)
    @cart = @user.cart
  end
end
