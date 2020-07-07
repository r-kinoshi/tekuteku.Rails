Rails.application.routes.draw do
  get 'homes/index'
  root 'homes#index'
  # devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

end
