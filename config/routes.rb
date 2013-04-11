SkiBus::Application.routes.draw do

  resources :trips, only: [:index, :new, :create, :show]
  resources :charges, only: [:index, :new, :create]
  resources :guest_infos, only: [:index, :new, :create] do
    put :checked_in_morning, on: :member
    put :checked_in_afternoon, on: :member
  end

  root to: "static_pages#home"
end
