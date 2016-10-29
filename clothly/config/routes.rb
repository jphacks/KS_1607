Rails.application.routes.draw do
  devise_for :users
  root 'knowledges#index'

  scope module: :knowledges do
    get '/latest' => 'sorts#latest'
    get '/ranking' => 'sorts#ranking'
    get '/recommend' => 'sorts#recommend'
  end

  resources :knowledges
  resources :users, only: [:show, :edit, :update]
end
