Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  resources :users do
    resources :items, only: [:index, :new, :create, :show, :edit]
    resources :shelves, only: [:index, :new, :create, :show, :edit]
    # resources :search, only: :index
  end
  get 'users/:id/item_search', to: 'search#item_search'
  # get 'users/:id/items/search', to: 'users#show'
end
