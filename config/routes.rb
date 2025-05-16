Rails.application.routes.draw do
  # Root path: go to list of places
  root to: "places#index"
  resources :places do
    resources :entries, only: [:new, :create]
  end
end
