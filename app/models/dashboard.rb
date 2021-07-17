class Dashboard < ApplicationRecord

  def create
    @dashboard = Dashboard.create(dashboard_params)
    @dashboard.name = "Dashboard"
    if @dashboard.save
      redirect_to dashboard_path(@dashboard)
    end
  end

  private

  def dashboard_params
    params.require(:dashboard).permit(:name)
  end

end
