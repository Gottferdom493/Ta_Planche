Rails.application.routes.draw do
  root to: 'familles#index'
  resources :familles do
    resources :items
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
