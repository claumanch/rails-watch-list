Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'

  resources :lists do
    resources :bookmarks, except: [:show]
  end

  resources :bookmarks, only: [:show]

  resources :movies
end
