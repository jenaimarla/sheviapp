class OrdersController < ApplicationController


  def my_orders
   @my_orders = Order.all
   @total_orders = @my_orders.map(&:total_pay).sum
  end

  def create
    creation = Creation.find(params[:creation_id])
    order  = Order.create!(creation: creation, amount: creation.price, state: 'pending')

    session = Stripe::Checkout::Session.create(
      billing_address_collection: 'required',
      shipping_address_collection: {
      allowed_countries: ['BE'],
    },
      payment_method_types: ['card', 'bancontact'],
      line_items: [{
        name: creation.name,
        amount: creation.price_cents,
        currency: 'eur',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
end

def show
  @order = Order.find(params[:id])
end

end
