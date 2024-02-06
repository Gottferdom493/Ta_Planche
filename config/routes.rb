Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: { registrations: 'users/registrations' }
  devise_scope :user do
    delete 'users/destroy', to: 'users/registrations#destroy', as: :destroy_user_registration
  end

  root to: 'familles#index'

  resources :items, only: [:edit, :update]
  resources :profils

  resources :familles do
    resources :items
  end

  resources :items do
    resources :profils
  end


  get '/weather/forecast', to: 'weather#forecast', defaults: { format: 'json' }

  # resources :items do
  #   resources :profils
  # end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
