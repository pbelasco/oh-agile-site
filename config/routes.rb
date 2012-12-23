Busao::Application.routes.draw do
  resources :habilidades

  resources :tripulantes

  # devise_for :admins
  resources :locais
  resources :viagens

  root :to => "home#index"
end
