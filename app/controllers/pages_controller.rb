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
  end

end
