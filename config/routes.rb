Rails.application.routes.draw do
  resources :iteams
  root 'iteams#index'
end
