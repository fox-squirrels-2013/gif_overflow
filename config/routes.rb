GifOverflow::Application.routes.draw do

  root :to => 'gifs#index'

  resources :gifs do
    resources :gifcomments
  end

  resources :gifs, only: [] do
    resources :votes, only: [:create, :destroy]
  end

  # The priority is based upon order of creation:
  # first created -> highest priority.
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  match '/signup',  to: 'users#new'
  match '/login',   to: 'sessions#new'
  match '/logout',  to: 'sessions#destroy', via: :delete

end
