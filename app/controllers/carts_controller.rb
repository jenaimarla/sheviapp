class CartsController < ApplicationController

  def add
    @cart = Cart.create
    @order_photo = OrderPhoto.find(params[:id])
    @order_poster = OrderPoster.find(params[:id])
    @order_photo.cart = @cart
    @order_poster.cart = @cart
  end

  def orders
    @orders = Cart.where(payed: false)
    @total_orders = @orders.map(&:total_pay).sum
  end

  def show
    @carts = Carts.find(params[:id])
  end

end
