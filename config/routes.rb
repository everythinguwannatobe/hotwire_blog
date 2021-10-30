Rails.application.routes.draw do
  root 'static#home'
  get 'static/home'

  devise_for :users

  resources :users, only: :show

end
