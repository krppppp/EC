Rails.application.routes.draw do
  # This line mounts Solidus's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Solidus relies on it being the default of "spree"
  mount Spree::Core::Engine, at: '/'

  get 'home/index' => 'home#index'
  get 'home/show' => 'home#show'
  post 'home/create' =>'home#create'
  get 'home/:id/edit' => 'home#edit'
  put 'home/:id/update' =>'home#update'
  delete 'home/:id/destroy' =>'home#destroy'
  put 'home/:id/favorite' => 'home#favorite'
end
