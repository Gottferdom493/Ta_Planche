Rails.application.routes.draw do
  devise_for :users
  root to: 'familles#index'

  resources :profils

  resources :familles do
    resources :items
  end

  # resources :items do
  #   resources :profils
  # end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
