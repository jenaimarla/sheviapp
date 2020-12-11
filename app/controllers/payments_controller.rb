class PaymentsController < ApplicationController

  def new
    # @serie_items = current_serie.serie_items
    # @total_orders = @serie_items.map(&:total_pay).sum

   @order = Order.where(state: 'pending').find(params[:order_id])
  end
end

