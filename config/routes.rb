Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.
  post 'lines/:id/add' => "lines#add_quantity", as: "line_item_add"
  post 'lines/:id/reduce' => "lines#reduce_quantity", as: "line_item_reduce"
  post 'lines' => "lines#create"
  get 'lines/:id' => "lines#show", as: "line_item"
  delete 'lines/:id' => "lines#destroy"

  resources :products, only: %i[index show]

  resources :carts, only: %i[show destroy]
end
