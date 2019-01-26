Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :restaurants, only: [:index, :show] do
      member do
        get :dishes
      end
    end
  end
end
