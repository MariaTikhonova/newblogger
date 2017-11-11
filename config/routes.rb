Rails.application.routes.draw do
  root to: 'articles#index'
  root to: 'tags#index'
  resources :articles do
  	resources :comments
  end
  resources :tags
end

