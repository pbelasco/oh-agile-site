Busao::Application.routes.draw do
  resources :locais

  resources :viagens

  resources :locals

  resources :viagems

  root :to => "home#index"
end
