class CartsController < ApplicationController

def add
    @cart = Cart.create
      @item = Item.find(params[:id])
      @item.cart = @cart
  end

  def orders
   @orders = Item.where(payed: false)
   @total_orders = @orders.map(&:total_pay).sum
  end

  def show
    @carts = Carts.find(params[:id])
  end




end
