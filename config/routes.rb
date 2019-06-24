Rails.application.routes.draw do
<<<<<<< HEAD
  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome' => 'users#index'
  get '/sessions' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  delete 'logout' => 'session#delete'

  resources :posts, :users

  root :to => 'users#index'

=======

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts

  root :to => 'home#index'
>>>>>>> upstream/master
end
