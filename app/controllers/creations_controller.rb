class CreationsController < ApplicationController

  def index
    @creations = Creation.all
  end

  def show
    @creation = Creation.find(params[:id])
    @serie_item = current_serie.serie_items.new
  end

  def new
    @creation = Creation.new
  end

  def create
    @creation = Creation.new(creation_params)
    if @creation.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @creation = Creation.find(params[:id])
  end

  def update
    @creation = Creation.find(params[:id])
    if @creation.update(creation_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @creation = Creation.find(params[:id])
    @creation.destroy
    redirect_to creations_path
  end

  private

  def creation_params
    params.require(:creation).permit(:name, :format, :price)
  end
end
