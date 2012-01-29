Bawi::Engine.routes.draw do
  resources :articles
  resources :comments

  resources :groups do
    resources :boards
    resources :comments
  end

  resources :boards do
    resources :articles
  end

  root to: "groups#index"
end
