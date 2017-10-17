Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :products
  resources :invoices

  get "/products/:id/description", to: "products#description", as: "description"
  get "/products/:id/inventory", to: "products#inventory", as: "inventory"
end
