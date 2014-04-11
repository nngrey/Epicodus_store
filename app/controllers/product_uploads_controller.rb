class ProductUploadsController < ApplicationController

  def new
  end

  def create
    ProductUpload.new(params[:product_upload][:csv]).parse!
  end
end
