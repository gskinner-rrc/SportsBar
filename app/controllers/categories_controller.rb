class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end
  #Loads up the view of the same name after the action has executed
  # app/views/products/index.html.erb
  # This view will have access to the @products variable.

  def show
    @category = Category.find(params[:id])
  end # Loads: app/views/products/show.html.erb

  def new
    @category = Category.new
  end # Loads: app/views/products/new.html.erb

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  def category_params
    params.require(:category).permit(:name)
  end
end
