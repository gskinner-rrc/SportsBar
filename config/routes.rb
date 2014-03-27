Sportsbar::Application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'products', to: 'products#index', as: 'products'
  get 'products/new', to: 'products#new', as: 'new_product'
  get 'products/:id', to: 'products#show', as: 'product'
  post 'products', to: 'products#create'

  get 'orders', to: 'orders#index', as: 'orders'

  # This root command does the following
  # get '/', to: products#index', as: 'root'
  root to: 'products#index'











  # get "workshifts/index"
  # get "workshifts/show"
  # get "workshifts/new"
  # get "workshifts/create"
  # get "workshifts/edit"
  # get "workshifts/update"
  # get "workshifts/destroy"
  # get "tables/index"
  # get "tables/show"
  # get "tables/new"
  # get "tables/create"
  # get "tables/edit"
  # get "tables/update"
  # get "tables/destroy"
  # get "servers/index"
  # get "servers/show"
  # get "servers/new"
  # get "servers/create"
  # get "servers/edit"
  # get "servers/update"
  # get "servers/destroy"
  # get "orders/index"
  # get "orders/show"
  # get "orders/new"
  # get "orders/create"
  # get "orders/edit"
  # get "orders/update"
  # get "orders/destroy"
  # get "managers/index"
  # get "managers/show"
  # get "managers/new"
  # get "managers/create"
  # get "managers/edit"
  # get "managers/update"
  # get "managers/destroy"
  # get "line_items/index"
  # get "line_items/show"
  # get "line_items/new"
  # get "line_items/create"
  # get "line_items/edit"
  # get "line_items/update"
  # get "line_items/destroy"
  # get "employees/index"
  # get "employees/show"
  # get "employees/new"
  # get "employees/create"
  # get "employees/edit"
  # get "employees/update"
  # get "employees/destroy"
  # get "customers/index"
  # get "customers/show"
  # get "customers/new"
  # get "customers/create"
  # get "customers/edit"
  # get "customers/update"
  # get "customers/destroy"
  # get "categories/index"
  # get "categories/show"
  # get "categories/new"
  # get "categories/create"
  # get "categories/edit"
  # get "categories/update"
  # get "categories/destroy"
  # get "products/index"
  # get "products/show"
  # get "products/new"
  # get "products/create"
  # get "products/edit"
  # get "products/update"
  # get "products/destroy"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
