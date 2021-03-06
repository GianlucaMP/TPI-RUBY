Rails.application.routes.draw do
  resources :reservations
  resources :items

  post 'sesiones' => 'user_token#create'
  get 'users/current' => 'users#current'

  post 'usuarios' => 'users#create'
  resources :users

  get 'productos' => 'products#index'
  get 'productos/:codigo' => 'products#por_codigo'
  get 'productos/:codigo/items' => 'products#stock'
  post 'productos/:codigo/items' => 'products#add_items'

  get 'clientes' => 'clients#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
