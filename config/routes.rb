Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope :api do
    resources :restaurants, only: [:index, :show] do
      member do
        get :dishes
      end
    end

    resources :dishes, only: [] do
      member do
        get :restaurants
      end
    end
  end
end
