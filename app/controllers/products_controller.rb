class ProductsController < ApplicationController

  before_action :set_product, only:[:edit, :update, :destroy]

  def index
    @products = Product.all
    @best_offer = Product.order(price: :desc).limit 1

  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params
    if(@product.save)
      flash[:notice] = "Product successfully created"
      redirect_to new_product_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @product.update product_params
      flash[:notice] = "Product successfully updated"
      redirect_to root_url
    else
      render :edit
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :amount, :price)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
