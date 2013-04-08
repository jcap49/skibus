SkiBus::Application.routes.draw do

  resources :uploads, :guest_infos, :trips

  match 'addtrip', to: "static_pages#trip"
  match 'checkin', to: "static_pages#checkin"
  match 'uploads', to: "uploads#create"
  match 'registration', to: "static_pages#registration"

  match 'triplist', to: "trips#index"

  root to: "static_pages#home"
end
