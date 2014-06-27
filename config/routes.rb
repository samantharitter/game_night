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
end
