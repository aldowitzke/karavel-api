class Api::V1::ProductsController < ApplicationController
  before_action :set_product, only: [ :show, :update, :destroy ]
  skip_before_action :verify_authenticity_token
  
  def index
    @products = Product.all
  end

  def show
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @product.update(product_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    @product.destroy
    head :no_content
  end

  private

  def product_params
    params.require(:product).permit(:name, species_attributes: [:name])
  end

  def set_product
    @product = Product.find(params[:id]) 
  end

  def render_error
    render json: { errors: @product.errors.full_messages },
      status: :unprocessable_entity
  end
end