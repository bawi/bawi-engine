Bawi::Engine.routes.draw do
  resources :boards

  resources :groups do
    resources :boards
  end

  root to: "groups#index"
end
