class OrdersController < ApplicationController
  def show
  @order = current_user.orders.find(params[:id])
  end

  def create
  candle = Candle.find(params[:candle_id])
  order  = Order.create!(candle: candle, candle_name: candle.name, amount: candle.price, state: 'pending', user: current_user)

  order.update(checkout_session_id: session.id)
  redirect_to new_order_payment_path(order)
  end
end
