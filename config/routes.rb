Rails.application.routes.draw do
<<<<<<< HEAD
  get 'reviews/new'

  get 'reviews/create'

=======

  resources :books
>>>>>>> b8c717f004b2454d69a25ff168cfba055f34e187
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
