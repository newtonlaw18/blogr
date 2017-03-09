Rails.application.routes.draw do
  devise_for :admins
  resources :posts
  root 'posts#index'
  get '/contact' => 'pages#contact'
  get '/newtonbot' => 'pages#newtonbot'
  get 'ask_newtonbot', to: 'application#ask_newtonbot'
end
