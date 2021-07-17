class DashboardsController < ApplicationController

  def new
    @dashboard = Dashboard.new
    authorize @dashboard
  end

  def create
    @dashboard = Dashboard.create(dashboard_params)
    authorize @dashboard

    if @dashboard.save
      redirect_to dashboard_path(@dashboard)
    else
      render :new
    end
  end

  def show
    @dashboard = Dashboard.find(params[:id])
    @orders = Order.all
    @my_orders = Order.joins(:user).where(orders: {user_id: current_user.id})
    authorize @dashboard
  end


  private

  def dashboard_params
    params.require(:dashboard).permit(:name, :user_id)
  end
end
