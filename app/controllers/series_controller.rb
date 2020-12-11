class SeriesController < ApplicationController

  def add
    @serie = Serie.create
      @serie_item = SerieItem.find(params[:id])
      @serie_item.serie = @serie
  end

  # def my_orders
  #  @my_orders = current_serie
  #  @total_orders = @my_orders.map(&:total_pay).sum
  # end

  def show
    @series = Series.find(params[:id])
  end
end
