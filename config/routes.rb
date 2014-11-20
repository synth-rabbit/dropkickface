Rails.application.routes.draw do
  root to: "comics#home", id: Comic.last.id
  get 'about', to: 'pages#about'
  resources :comics, only: [:index, :show, :create, :destroy]
  get 'blog', to: 'posts#index'
  resources :posts, only: [:show, :create, :destroy]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :admin, only: [:index]
end
