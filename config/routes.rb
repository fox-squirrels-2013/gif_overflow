GifOverflow::Application.routes.draw do

  root :to => 'gifs#index'
  resources :gifs do
    resources :gifcomments
  end

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  match '/signup',  to: 'users#new'
  match '/login',   to: 'sessions#new'
  match '/logout',  to: 'sessions#destroy', via: :delete

end
