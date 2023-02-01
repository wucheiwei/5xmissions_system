Rails.application.routes.draw do
  root 'mission_lists#index'
  get 'home', to: 'mission_lists#home'
  resources :mission_lists
end
