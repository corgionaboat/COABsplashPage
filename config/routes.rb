Rails.application.routes.draw do
  resources :subscribers
#  root 'subscribers#index'
  resources :splash_page
  root 'spash_page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
