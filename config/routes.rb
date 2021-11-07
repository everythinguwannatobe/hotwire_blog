Rails.application.routes.draw do
  root 'static#home'
  get 'static/home'

  devise_for :users
  resources :articles

  resources :users, only: :show, param: :slug, path: "/user"

  resources :users do
    resources :articles, only: %i[new create]
  end
end
