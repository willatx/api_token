module Api::V1
class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :update, :destroy]

  def index
    render json: Company.all
  end

  def show
    render json: @company
  end

  private
    def set_company
      @company = Company.find(params[:id])
    end
 end
end
