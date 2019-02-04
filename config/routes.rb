Rails.application.routes.draw do
  resources :catchup_lists do
    resources :catchup_items
  end
  root "catchup_lists#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
