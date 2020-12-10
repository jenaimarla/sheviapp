class PaymentsController < ApplicationController
  def new
    @card = Card.where(state:"pending")
    @total_orders = @card.map(&:total_pay).sum
  end
end
