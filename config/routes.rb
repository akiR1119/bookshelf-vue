Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'shelves#index'
  resources :users do
    resources :items, only: [:index, :new, :create, :show, :edit]
    resources :shelves, only: [:index, :new, :create, :show, :edit]
  end
end
