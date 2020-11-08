Rails.application.routes.draw do
devise_for :users, controllers: {
  omniauth_callbacks: 'users/omniauth_callbacks',
  registrations: 'users/registrations'
}
  root to: "stats#index"
  resources :stats, only: [:index, :new, :create]
  resources :fielders
end
