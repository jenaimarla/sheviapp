class OrderPostersController < ApplicationController

  def index
    @order_posters = OrderPoster.all
  end

  def show
    @order_poster = OrderPhoto.find(params[:id])
  end

  def new
    @order_poster = OrderPoster.new
  end

  def create
    #creer un panier si payed true
    @cart = @current_cart
    if @cart.nil?
      @cart = Cart.create
    end
    @order_poster = OrderPoster.new(order_posters_params)
    @theme = Theme.find(params[:theme_id])
    @order_poster.theme = @theme
    @order_poster.cart = @cart
    if @order_poster.save
      redirect_to @theme
    else
      render :new
    end
  end

  def edit
    @order_poster = OrderPoster.find(params[:id])
  end

  def update
     if @order_poster.update(order_posters_params)
      redirect_to order_posters_path
    else
      render :edit
    end
  end

  def destroy
    @order_poster = OrderPoster.find(params[:id])
    @order_poster.destroy
    redirect_to orders_carts_path
  end


  private

  def order_posters_params
    params.require(:order_poster).permit(:quantity)
  end


end
