class API::V1::ProductsController < ApplicationController
  respond_to :json

  def index
    respond_with Product.all
  end

  def show
    respond_with Product.find(params[:id])
  end

  def create
    respond_with Product.create(params[:product])
  end

  def update 
    respond_with Product.find(params[:id]).update_attributes(params[:product])
  end

  def destroy
    respond_with Product.destroy(params[:id])
  end

end