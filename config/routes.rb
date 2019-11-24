Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :videos, only: [:index, :new, :create] do
    resources :likes
  end

  root to: 'videos#index'
end
