SkiBus::Application.routes.draw do

  resources :trips, only: [:index, :new, :create, :show]
  resources :guest_infos, only: [:new] do
    put :check_in, on: :member
  end

  root to: "static_pages#home"
end
