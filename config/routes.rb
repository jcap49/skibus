SkiBus::Application.routes.draw do

  resources :uploads, :guest_infos

  match 'checkin', to: "static_pages#checkin"
  match 'uploads', to: "uploads#create"
  match 'registration', to: "static_pages#registration"

  root to: "static_pages#home"
end
