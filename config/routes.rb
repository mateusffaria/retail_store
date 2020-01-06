Rails.application.routes.draw do
  resources :departments
  root to: "products#index"
  resources :products, only: [:new, :create, :destroy, :edit, :update]

  get "products/find" => "products#search", as: :find_product
end
