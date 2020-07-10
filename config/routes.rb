Rails.application.routes.draw do
  resources :posts
  get   'posts/show'
  get   'homes/index'     #投稿一覧、トップページ
  get   'homes/login'     #ログイン
  post  'posts/:id/edit' => 'posts#update'
  root  'posts#index'     #投稿一覧、トップページ
  # devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

end
