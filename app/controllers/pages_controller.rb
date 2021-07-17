class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @tickets = Ticket.all
    @order = Order.new
    @dashboard = Dashboard.all
  end

  def dashboard
    @orders = Order.all
    @my_orders = Order.joins(:user).where(orders: {user_id: current_user.id})

    @cash_total = 0
    @credit_card = 0

    @my_total_cashback = 0

    @my_cashback = @my_orders.each do |order|
      @price = order.ticket.price.to_f
      @my_cash = order.ticket.cashback.to_f
      @quantity_orders = order.quantity.to_f

      @cash_total += (@price * @my_cash) * @quantity_orders
      @credit_card += (@price * @quantity_orders) * 0.01

      @my_total_cashback = @cash_total + @credit_card
    end
  end

  def admin
    @companies_count = Company.all.count
    @tickets_sold = Order.all.count
    @orders = Order.all

    @total_earning = 0

    @earnings = @orders.each do |cash|
      @price = cash.ticket.price.to_f
      @quantity = cash.quantity.to_f

      @total_earning += (@price * @quantity)
    end
  end

end
