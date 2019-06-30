class Api::V1::ExportationStandardsController < ApplicationController
  before_action :set_standard, only: [ :show, :update, :destroy ]
  skip_before_action :verify_authenticity_token
  
  def index
    @standards = ExportationStandard.all
  end

  def show
  end

  def create
    @standard = ExportationStandard.new(standard_params)
    if @standard.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @standard.update(standard_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    @standard.destroy
    head :no_content
  end

  private

  def standard_params
    params.require(:exportation_standard).permit(:species_id, :quality_id, :value)
  end

  def set_standard
    @standard = ExportationStandard.find(params[:id]) 
  end

  def render_error
    render json: { errors: @standard.errors.full_messages },
      status: :unprocessable_entity
  end
end