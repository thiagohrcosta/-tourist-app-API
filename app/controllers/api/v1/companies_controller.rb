class Api::V1::CompaniesController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show, :update ]
  before_action :set_company, only: [:show, :update]

  def index
    @companies = policy_scope(Company)
    authorize @companies
  end

  def show;end

  def update
    if @company.update(company_params)
      render :show
    else
      render_error
    end
  end

  private

  def set_company
    @company = Company.find(params[:id])
    authorize @company
  end

  def company_params
    params.require(:company).permit(:user_id, :name, :logo)
  end

  def render_error
    render json: { errors: @company.errors.full_messages},
    status: :unprocessable_entity
  end
end
