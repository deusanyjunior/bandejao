# -*- encoding : utf-8 -*-
UspservicesDeusanyjuniorDj::Application.routes.draw do

  get "welcome/index"

  get "campusunits/index"

  get "campusunits/show"

  get "campusunits/new"

  get "campusunits/create"

  get "campusunits/edit"

  get "campusunits/update"

  get "campusunits/destroy"

  get "restaurants/index"

  get "restaurants/show"

  get "restaurants/new"

  get "restaurants/create"

  get "restaurants/edit"

  get "restaurants/update"

  get "restaurants/destroy"

  get "restaurantopeninghours/index"

  get "restaurantopeninghours/show"

  get "restaurantopeninghours/new"

  get "restaurantopeninghours/create"

  get "restaurantopeninghours/edit"

  get "restaurantopeninghours/update"

  get "restaurantopeninghours/destroy"

  get "meals/index"

  get "meals/show"

  get "meals/new"

  get "meals/create"

  get "meals/edit"

  get "meals/update"

  get "meals/destroy"

  get "menus/index"

  get "menus/show"

  get "menus/new"

  get "menus/create"

  get "menus/edit"

  get "menus/update"

  get "menus/destroy"

  get "menuscomments/index"

  get "menuscomments/show"

  get "menuscomments/new"

  get "menuscomments/create"

  get "menuscomments/edit"

  get "menuscomments/update"

  get "menuscomments/destroy"

  get "placescategories/index"

  get "placescategories/show"

  get "placescategories/new"

  get "placescategories/create"

  get "placescategories/edit"

  get "placescategories/update"

  get "placescategories/destroy"

  get "places/index"

  get "places/show"

  get "places/new"

  get "places/create"

  get "places/edit"

  get "places/update"

  get "places/destroy"

  resources :campusunits, :path => "campus"
  resources :restaurants, :path => "bandejao"
  resources :restaurantopeninghours, :path => "horariosrestaurante"
  resources :meals, :path => "refeicao"
  resources :menus, :path => "cardapio"
  resources :menuscomments, :path => "comentariosrefeicao"
  resources :placescategories, :path => "categoriaslocal"
  resources :places, :path => "local"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
