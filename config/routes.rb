Rails.application.routes.draw do
  root 'sessions#new'

  get 'publications' => 'publications#index'
  post 'publications' => 'publications#create'
  get 'publications/new' => 'publications#new'
  get 'publications/:id' => 'publications#show', as: :publication
  patch 'publications/:id' => 'publications#update'
  get 'publications/:id/edit' => 'publications#edit', as: :edit_publication
  delete 'publications/:id' => 'publications#destroy'
  
  get 'users/:user_id/publications' => 'publications#index'

  get 'sessions/new'
# to create new user
  get 'users' => 'users#index'
  get 'users/new' => 'users#new'
  post 'users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  # get '/login' => 'sessions#new'
  delete '/logout' => 'sessions#destroy'

  get 'users/index'

  # get '/users/:user_id/publications/' => 'publications#show'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'users#index'

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
