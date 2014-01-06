Bazy::Application.routes.draw do

  root to: 'muulib#index'

  get 'muulib', to: 'muulib#index'
end
