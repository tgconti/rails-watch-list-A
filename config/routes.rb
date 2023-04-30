Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists, except: [:destroy] do
    resources :bookmarks, only: [:new, :create]
  end
end
