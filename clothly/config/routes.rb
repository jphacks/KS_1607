Rails.application.routes.draw do
  devise_for :users
  root 'knowledges#index'
  resources :knowledges
end
