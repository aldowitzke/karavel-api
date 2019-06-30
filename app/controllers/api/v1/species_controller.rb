class Api::V1::SpeciesController < ApplicationController
  before_action :set_species, only: [ :show, :update, :destroy ]
  skip_before_action :verify_authenticity_token
  
  def index
    @species = Species.all
  end

  def show
  end

  def create
    @species = Species.new(species_params)
    if @species.save
      render :show, status: :created
    else
      render_error
    end
  end
  
  def update
    if @species.update(species_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    @species.destroy
    head :no_content
  end

  private

  def species_params
    params.require(:species).permit(:name)
  end

  def set_species
    @species = Species.find(params[:id]) 
  end

  def render_error
    render json: { errors: @species.errors.full_messages },
      status: :unprocessable_entity
  end
end