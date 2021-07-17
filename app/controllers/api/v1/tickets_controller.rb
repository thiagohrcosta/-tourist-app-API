class Api::V1::TicketsController < Api::V1::BaseController
  def index
    @tickets = policy_scope(Ticket)
    authorize @tickets
  end
end
