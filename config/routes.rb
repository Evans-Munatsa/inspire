Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'users/show'
  devise_for :users
  resources :posts
  resources :users
  root to: "static_pages#home"
  get 'static_pages/about'
  get 'static_pages/contact'
end
