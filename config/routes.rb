Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  resources :books
  #resources :reviews, only:[:new, :create, :index]

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' },
    path: "sessions"


  resources :users, except: :index do
    resources :reviews, only:[:new, :create, :index]
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

