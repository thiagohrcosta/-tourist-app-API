class Api::V1::TicketsController < Api::V1::BaseController
  before_action :set_ticket, only: [:show]

  def index
    @tickets = policy_scope(Ticket)
    authorize @tickets
  end

  def show;end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
    authorize @ticket
  end
end
