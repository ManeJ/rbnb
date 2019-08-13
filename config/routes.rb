Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :warriors do
    resources :bookings
  end
  get 'owner/bookings', to: 'bookings#display'
  patch 'owner/bookings/:id/accept', to: 'bookings#accept'
  get 'owner/warriors', to: 'warriors#owner'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
