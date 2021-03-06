Rails.application.routes.draw do
  root to: "cocktails#index"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create, :new]
    resources :reviews, only: [:create]
  end
  resources :doses, only: [:destroy]
end
