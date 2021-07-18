class Api::V1::OrdersController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show, :update, :create, :destroy ]
  before_action :set_order, only: [:show, :update, :destroy]
  before_action :set_ticket, only: [:create, :update]

  def index
    @orders = policy_scope(Order)
    authorize @orders
  end

  def show;end

  def create
    @order = Order.new(order_params)
    authorize @order
    if @order.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @order.update(order_params)
      render :show
    else
      render_error
    end
  end


  def destroy
    @order.destroy
    head :no_content
  end

  private

  def set_order
    @order = Order.find(params[:id])
    authorize @order
  end

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:user_id, :ticket_id, :quantity)
  end

  def render_error
    render json: { errors: @order.errors.full_messages},
    status: :unprocessable_entity
  end
end
