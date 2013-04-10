SkiBus::Application.routes.draw do

  resources :trips, only: [:index, :new, :create, :show]
  resources :charges, only: [:index, :new, :create]
  resources :guest_infos, only: [:index, :new, :create] do
    put :check_in, on: :member
  end

  root to: "static_pages#home"
end
