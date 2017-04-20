class ChargesController < ApplicationController
  def create
  # Amount in cents
  @amount_cents = (params[:tickets]).to_i * 10000
  @amount_dollars = (params[:tickets]).to_i * 100
  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount_cents,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
