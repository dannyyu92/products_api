class API::V1::ProductsController < ApplicationController
  respond_to :json

  def index
    respond_with Product.all
  end

  def show
    respond_with Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      respond_with @product
    end
  end

  def update 
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      respond_with @product
    end
  end

  def destroy
    respond_with Product.destroy(params[:id])
  end

  private
  def product_params
    params.require(:product).permit(:name, :category, :price, :release_date)
  end

end