Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :products, only: [ :index, :show, :update, :create, :destroy ]
      resources :species, only: [ :index, :show, :update, :create, :destroy ]
    end
  end
end
