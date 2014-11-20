Rails.application.routes.draw do
  root to: "pages#about"
  get 'about', to: 'pages#about'
  get 'blog', to: 'posts#index'
  resources :posts, only: [:show, :create, :destroy]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :admin, only: [:index]
end
