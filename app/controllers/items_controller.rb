class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    #creer un panier si payed true
    @cart = current_cart
    if @cart.nil?
      @cart = Cart.create
    end
    @item = Item.new(items_params)
    @image = Image.find(params[:image_id])
    @theme = Theme.find(params[:theme_id])
    @item.image = @image
    @item.theme = @theme
    @item.cart = @cart
    if @item.save
      redirect_to @image
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
     if @item.update(items_params)
      redirect_to items_path
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to orders_carts_path
  end


  private

  def items_params
    params.require(:item).permit(:quantity)
  end


end
