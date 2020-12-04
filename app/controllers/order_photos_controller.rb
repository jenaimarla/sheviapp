class OrderPhotosController < ApplicationController

  def index
    @order_photos = OrderPhoto.all
  end

  def show
    @order_photo = OrderPhoto.find(params[:id])
  end

  def new
    @order_photo = OrderPhoto.new
  end

  def create
    #creer un panier si payed true
    @cart = @current_cart
    if @cart.nil?
      @cart = Cart.create
    end
    @order_photo = OrderPhoto.new(order_photos_params)
    @image = Image.find(params[:image_id])
    @order_photo.image = @image
    @order_photo.cart = @cart
    if @order_photo.save
      redirect_to @image
    else
      render :new
    end
  end

  def edit
    @order_photo = OrderPhoto.find(params[:id])
  end

  def update
     if @order_photo.update(order_photos_params)
      redirect_to order_photos_path
    else
      render :edit
    end
  end

  def destroy
    @order_photo = OrderPhoto.find(params[:id])
    @order_photo.destroy
    redirect_to orders_carts_path
  end


  private

  def order_photos_params
    params.require(:order_photo).permit(:quantity)
  end


end
