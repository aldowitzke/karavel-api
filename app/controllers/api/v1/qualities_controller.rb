class Api::V1::QualitiesController < ApplicationController
  before_action :set_quality, only: [ :show, :update, :destroy ]
  skip_before_action :verify_authenticity_token
  
  def index
    @qualities = Quality.all
  end

  def show
  end

  def create
    @quality = Quality.new(quality_params)
    if @quality.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @quality.update(quality_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    @quality.destroy
    head :no_content
  end

  private

  def quality_params
    params.require(:quality).permit(:name)
  end

  def set_quality
    @quality = Quality.find(params[:id]) 
  end

  def render_error
    render json: { errors: @quality.errors.full_messages },
      status: :unprocessable_entity
  end
end