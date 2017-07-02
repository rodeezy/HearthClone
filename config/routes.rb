Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    resource :session, only: [:create, :destroy] # might need show

    resources :votes, only: [:create, :update, :destroy]
    resources :scales, only: [:create, :update, :destroy]

    resources :users, only: [:create, :show] do
      resources :decks, only: [:show]
    end

    resources :decks, only: [:create, :update, :destroy]

    resources :replies, only: [:create, :update, :destroy]

    resources :image_posts, only: [:create]

    resources :comments, only: [:create, :update, :destroy]

    resources :cards, only: [:index]
    resources :card_posts, path: "posts", only: [:create, :index, :show] do #maybe add destroy; no edit tho
      resources :image_posts, only: [:index, :show]
    end

  end

  root "static_pages#root"
end
