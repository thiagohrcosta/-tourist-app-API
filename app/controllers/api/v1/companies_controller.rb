class Api::V1::CompaniesController < Api::V1::BaseController
  before_action :set_company, only: [:show]

  def index
    @companies = policy_scope(Company)
    authorize @companies
  end

  def show;end

  private

  def set_company
    @company = Company.find(params[:id])
    authorize @company
  end
end
