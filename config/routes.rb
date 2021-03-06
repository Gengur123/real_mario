Rails.application.routes.draw do
  root to: 'homes#index'

  get '/homes' => 'homes#index'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'


  resources :products do
    resources :reviews
  end
end
