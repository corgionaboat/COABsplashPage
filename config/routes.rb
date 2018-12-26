Rails.application.routes.draw do
  get '/home', to: 'static_pages#home'

  # This line mounts Solidus's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Solidus relies on it being the default of "spree"
  mount Spree::Core::Engine, at: '/shop'

  resources :subscribers
#  root 'subscribers#index'
  resources :splash_page
  root 'spash_page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
