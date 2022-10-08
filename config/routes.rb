Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get 'images/index'
      get 'posts/index'
    end
  end

  devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end
  root to: 'home#index'

  # root 'posts#index'
  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
