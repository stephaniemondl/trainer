Rails.application.routes.draw do



  # Routes for the List_of_exercise resource:
  # CREATE
  get "/list_of_exercises/new", :controller => "list_of_exercises", :action => "new"
  post "/create_list_of_exercise", :controller => "list_of_exercises", :action => "create"

  # READ
  get "/list_of_exercises", :controller => "list_of_exercises", :action => "index"
  get "/list_of_exercises/:id", :controller => "list_of_exercises", :action => "show"

  # UPDATE
  get "/list_of_exercises/:id/edit", :controller => "list_of_exercises", :action => "edit"
  post "/update_list_of_exercise/:id", :controller => "list_of_exercises", :action => "update"

  # DELETE
  get "/delete_list_of_exercise/:id", :controller => "list_of_exercises", :action => "destroy"
  #------------------------------

  devise_for :users
  root 'list_of_exercises#index'

  get "/users/new", :controller => "users", :action => "new"
  post "/create_users", :controller => "users", :action => "create"

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_users/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_users/:id", :controller => "users", :action => "destroy"

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
