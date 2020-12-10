class SerieItemsController < ApplicationController

  def create
    @serie = current_serie
    @serie_item = @serie.serie_items.new(serie_params)
    @serie.save
    session[:serie_id] = @serie.id
  end

  private

  def serie_params
    params.require(:serie_item).permit(:creation_id, :quantity)
  end
end
