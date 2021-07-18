class Api::V1::TicketsController < Api::V1::BaseController
  # Acts as a token seria apenas para index e show, foi usado except geral para testes
  acts_as_token_authentication_handler_for User, except: [ :index, :show, :update, :create, :destroy ]

  before_action :set_ticket, only: [:show]

  def index
    @tickets = policy_scope(Ticket)
    authorize @tickets
  end

  def show;end

  def create
    @ticket = Ticket.new(ticket_params)
    authorize @ticket
    if @ticket.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @ticket.update(ticket_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    @ticket.destroy
    head :no_content
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
    authorize @ticket
  end

  def ticket_params
    params.require(:ticket).permit(:company_id, :photo, :price, :cashback)
  end

  def render_error
    render json: { errors: @order.errors.full_messages},
    status: :unprocessable_entity
  end
end
