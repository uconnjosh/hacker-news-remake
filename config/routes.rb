HnClone::Application.routes.draw do
  root to: "users#index"
  resources :users
  resources :articles
end
