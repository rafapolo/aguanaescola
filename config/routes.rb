Aguanaescola::Application.routes.draw do

  get "admin/noticia"
  get "admin/sobre"
  get "admin/escolas"
  get "admin/monitores"
  get "admin/coletas"

  resources :pessoas
  resources :escolas
  resources :coletas
  resources :midia
  resources :noticia
  resources :cidades
  resources :sobres

  match '/noticias' => 'pages#noticias'
  match '/sobre' => 'pages#sobre'
  match '/login' => 'pages#login'  
  match '/logout' => 'pages#logout'
  match '/auth' => 'pages#auth'
  match '/admin' => 'admin#index', :as=>:admin

  match "/sitemap.xml" => "pages#sitemap"
  root :to => 'pages#index'

end
