module CurrentCart
  extend ActiveSupport::Concern
private
  
  def set_cart
    current_user
    #@cart = Cart.find(session[:cart_id])
    if @user.cart.nil?
      @cart= @user.create_cart
      session[:cart_id]= @cart.id
    else
      @cart= @user.cart
      session[:cart_id]= @cart.id
    end
  end
end
