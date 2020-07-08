Rails.application.routes.draw do
  get   'posts/index'     #投稿
  get   'homes/index'     #ログイン
  get   'homes/login'     #ログイン
  root  'homes#index'     #ログイン
  # devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

end
