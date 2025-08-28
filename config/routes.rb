Rails.application.routes.draw do
  resources :teams do
    resources :players, only: [:new, :create]
  end
end
