Rails.application.routes.draw do
  get '/login', as: 'login', to: 'login#index'

  resources :bananas
  root 'static_pages#index'
end
