Rails.application.routes.draw do
  get 'upload/image'
  devise_for :users
  resources :posts
  root 'posts#index'
  resources :api_posts, only: [:index, :show] 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
