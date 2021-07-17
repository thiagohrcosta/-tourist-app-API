class Api::V1::CompaniesController < Api::V1::BaseController
  def index
    @companies = policy_scope(Company)
    authorize @companies
  end
end
