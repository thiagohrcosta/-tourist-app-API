class OrdersController < ApplicationController
  before_action :set_ticket, only: [:new, :create]
  def new
    @order = Order.new
    authorize @order
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    @order.ticket = @ticket
    authorize @order
    if @order.save
      redirect_to root_path
    else
      render :new
    end
  end

  def dashboard
  end


  private



  def set_ticket
    @ticket = Ticket.find(params[:ticket_id])
    authorize @ticket
  end

  def order_params
    params.require(:order).permit(:user_id, :ticket_id, :quantity)
  end
end
