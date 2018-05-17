Rails.application.routes.draw do
  # get 'users/show'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'books#index'
  get '/books' => 'books#new'
  resources :books
  resources :users

end
