Bazy::Application.routes.draw do

  root to: 'muulib#index'

  get 'muulib', to: 'muulib#index'

  scope '/muulib' do
    resources :artists
    resources :albums
    resources :songs
    resources :record_labels
    resources :genres
  end
end
