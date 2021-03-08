Rails.application.routes.draw do
  resources :recipes
  root 'recipes#index'
  get 'pages/about'
  get 'welcome/show', to: 'welcome#show'

  resources :recipes, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
