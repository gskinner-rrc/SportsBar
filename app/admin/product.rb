ActiveAdmin.register Product do

permit_params :name, :description, :price, :stock_quantity, :category_id, :image_filename
	
  form(:html => { :multipart => true }) do |f|
    f.inputs "Product" do
      f.input :name
      f.input :description
      f.input :price
      f.input :stock_quantity
      f.input :category_id, as: :select, collection: Category.all
      f.input :image_filename, :as => :file
      end
    f.actions
  end

  index do
    column :id
    column :name
    column :description
    column :price, :sortable => :price do |product|
      div :class => "price" do
        number_to_currency product.price
      end
    end
    column :stock_quantity
    column :category_id
    column :image_filename
    column :created_at
    column :updated_at
    default_actions
  end

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
