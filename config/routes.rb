Rails.application.routes.draw do
  resources :cats
  resources :posts
  root 'static#home'
  get 'static/home'

  resources :users, only: [:new, :create, :edit, :update]
  resources :users, only: :show, param: :slug
  resource :session, only: [] do
    get :new, path: :sign_in
    post :create, path: :sign_in
    delete :destroy, path: :sign_out, as: :sign_out
  end

  resources :articles, only: [:index, :show,]
  resources :users do
    resources :articles, only: [:new, :create, :edit, :update, :destroy]
  end

end
