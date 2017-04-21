require 'securerandom'
class ChargesController < ApplicationController
  def create
  # Amount in cents
  @tickets = (params[:tickets]).to_i
  @amount_cents = @tickets * 10000
  @amount_dollars = @tickets * 100
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

  if !User.find_by(email: params[:stripeEmail])
    user = User.new
    user.email =  params[:stripeEmail]
    user.first_name = params[:first_name]
    user.last_name  = params[:last_name]
    user.password = "123"
    user.save
  else
    user = User.find_by(email: params[:stripeEmail])
  end

  @tickets.times do |n|
  ticket = Ticket.new
  ticket.ticket_number= SecureRandom.uuid
  ticket.description="WDI CONF Ticket"
  ticket.cost=100
  ticket.user_id = user.id
  ticket.save
  end

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

end
