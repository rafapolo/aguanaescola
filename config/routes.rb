Aguanaescola::Application.routes.draw do
  get "admin/escolas"
  get "admin/monitores"
  get "admin/coletas"

  resources :pessoas
  resources :escolas
  resources :coletas
  resources :midia

  match '/sobre' => 'pages#sobre'
  match '/login' => 'pages#login'  
  match '/logout' => 'pages#logout'
  match '/auth' => 'pages#auth'
  match '/admin' => 'admin#index'
  match '/busca' => 'pages#busca'

  root :to => 'pages#index'
end
