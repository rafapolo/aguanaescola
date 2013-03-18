Aguanaescola::Application.routes.draw do
  get "admin/escolas"
  get "admin/monitores"
  get "admin/coletas"

  resources :coleta
  resources :midia
  resources :expedicaos
  resources :pessoas
  resources :escolas

  match '/sobre' => 'pages#sobre'
  match '/login' => 'pag%h3 es#login'  
  match '/logout' => 'pages#logout'
  match '/auth' => 'pages#auth'
  match '/admin' => 'admin#index'

  root :to => 'pages#index'
end
