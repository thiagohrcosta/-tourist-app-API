class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show]

  def show;end

  def create
    @ticket = Ticket.new(ticket_params)
    authorize @ticket
    if @ticket.save
      redirect_to root_path
    else
      render :show
    end
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
    authorize @ticket
  end

  def ticket_params
    params.require(:ticket).permit(:company_id, :photo, :price, :cashback)
  end
end
