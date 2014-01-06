Bazy::Application.routes.draw do

  root to: 'muulib#index'

  get 'muulib', to: 'muulib#index'

  resources :artists
  resources :albums
  resources :songs
  resources :labels
  resources :genres
end
