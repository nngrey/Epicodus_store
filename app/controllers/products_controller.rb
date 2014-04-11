class ProductsController < ApplicationController

  before_filter :authorize, only: [:edit, :update, :create, :new, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
      if @product.save
        redirect_to products_path, notice: 'You have added a new product.'
      else
        render 'new'
      end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
      if @product.update(product_params)
        flash[:notice] = "Product has been updated!"
        redirect_to product_path
      else
        render 'edit'
      end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product has been deleted."
    redirect_to root_url
  end

private
  def product_params
    params.require(:product).permit(:name, :price, :description)
  end
end
