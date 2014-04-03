class ProductsController < ApplicationController
  def index
    @products = Product.all.page(params[:page]).per(5)
    
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @categories = Category.all
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
  end

  def foodmenu_category
    @category = Category.find(params[:id])
  end

  def update
  end

  def destroy
  end
  
  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :stock_quantity, :category_id, :image_filename)
  end
  
end
