class CardsController < ApplicationController

  def index
    @serie_items = current_serie.serie_items
  end

  def create
    @serie_items = current_serie.serie_items
    lines_items = @serie_items.map do |item|
     {  name: item.creation.name,
        amount: item.creation.price_cents,
        currency: 'eur',
        quantity: 1
 }
end
  session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: lines_items,
    success_url: cards_url(@card),
    cancel_url: cards_url(@card)
  )

  # card.update(checkout_session_id: session.id)
  redirect_to new_card_payment_path(:card_id)


end

def show
  @card = current_user.cards.find(params[:id])
end
end
