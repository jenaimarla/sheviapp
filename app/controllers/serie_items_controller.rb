class SerieItemsController < ApplicationController

  # def create
  #   @serie = current_serie
  #   @serie_item = @serie.serie_items.new(serie_params)
  #   @serie.save
  #   session[:serie_id] = @serie.id
  # end

  # private

  # def serie_params
  #   params.require(:serie_item).permit(:creation_id, :quantity)
  # end



   def index
    @serie_items = SerieItem.all
  end

  def show
    @serie_item = SerieItem.find(params[:id])
  end

  def new
    @serie_item = SerieItem.new
  end

  def create
    #creer un panier si payed true
    @serie = current_serie
    # if @order.nil?
    #   @serie = Serie.create(user: current_user)
    # end
    @serie_item = SerieItem.new(serie_items_params)
    @creation = Creation.find(params[:creation_id])
    @serie_item.creation = @creation
    @serie_item.serie = @serie
    if @serie_item.save
      redirect_to @creation
    else
      render :new
    end
  end

  def edit
    @serie_item = SerieItem.find(params[:id])
  end

  def update
     if @serie_item.update(serie_items_params)
      redirect_to serie_items_path
    else
      render :edit
    end
  end

  def destroy
    @serie_item = SerieItem.find(params[:id])
    @serie_item.destroy
    redirect_to serie_items_path
  end


  private

  def serie_items_params
    params.require(:serie_item).permit(:quantity)
  end
end
