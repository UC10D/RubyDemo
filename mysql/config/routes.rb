Rails.application.routes.draw do
  get 'welcome/index'

  # resources :articles

  get '/articles', to: 'articles#create'

  root 'welcome#index'
end
