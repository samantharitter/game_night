GameNight::Application.routes.draw do
  get "welcome/index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'welcome#index'

  get '/plays/cheating', to: 'plays#cheating'
  get '/plays/thanks', to: 'plays#thanks'
  get '/plays/noplayer', to: 'plays#noplayer'

  resources :players
  resources :games
  resources :teams
  resources :plays
  resource  :session
  resources :referee

  # stuff for referee authentication
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
end
