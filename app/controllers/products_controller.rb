class ProductsController < ApplicationController
  def index
    if params[:page]
      @products = Product.all.page(params[:page]).per(5)
    elsif params[:category_id].to_i != 0
        category =  Category.find(params[:category_id])
        @products = category.products.search(params[:search])
    elsif params[:search]
      @products = Product.search(params[:search])
    else
      @products = Product.all.page(params[:page]).per(5)
    end
    @categories = Category.all
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
    id = params[:id]
    
    @category = Category.find(params[:id])
    @categories = Category.all
    @products = Product.where("category_id = ?", id).page(params[:page]).per(5)
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
