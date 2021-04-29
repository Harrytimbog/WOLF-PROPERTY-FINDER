Rails.application.routes.draw do
  get 'dashboard/index'
  get 'dashboard/profile'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
