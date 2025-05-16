Rails.application.routes.draw do
  root to: "places#index"

  resources :places do
    resources :entries, only: [:new, :create]
  end
end
