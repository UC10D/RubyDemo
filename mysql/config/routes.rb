Rails.application.routes.draw do
  resources :products
  get 'welcome/index'

  get '/articles', to: 'articles#create'

  resources :articles

  root 'welcome#index'
end
