Rails.application.routes.draw do

  root to: 'homes#top'
  get 'homes/about' => 'homes#about'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :trips do
    member do
      get 'trip_index'
    end
  end

end
