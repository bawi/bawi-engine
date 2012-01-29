Bawi::Engine.routes.draw do
  resources :groups do
    resources :boards
  end

  resources :boards do
    resources :articles
  end

  root to: "groups#index"
end
