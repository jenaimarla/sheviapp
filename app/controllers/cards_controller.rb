class CardsController < ApplicationController


  def create
 #    @serie_items = current_serie.serie_items
 #    lines_items = @serie_items.map do |item|
 #     {  name: item.creation.name,
 #        amount: item.creation.price_cents,
 #        currency: 'eur',
 #        quantity: 1
 # }
 #  end

  creation = Creation.find(params[:creation_id])
  card  = Card.create!(creation: creation, amount: creation.price, state: 'pending', user: current_user)

  session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
      name: creation.name,
      amount: creation.price_cents,
      currency: 'eur',
      quantity: 1
    }],
    success_url: card_url(card),
    cancel_url: card_url(card)
  )

  card.update(checkout_session_id: session.id)
  redirect_to new_order_payment_path(card)
end



end
