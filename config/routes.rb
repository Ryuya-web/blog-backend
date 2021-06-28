Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root 'posts#index'
  namespace :api, format: 'json' do
    get 'posts/preview'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
