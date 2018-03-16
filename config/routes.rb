Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'orders/index'
    end
  end

  namespace :api do
    namespace :v1 do
      get 'orders/show'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :items, except: [:new, :edit]
    end
  end

end
