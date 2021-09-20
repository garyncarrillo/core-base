Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations],
         path: '',
         path_name: {
           sign_in: 'sign_in'
         },
         controllers: {
           sessions: 'sessions',
         }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :products, only: %i(create update show index) do
      member do
        post :inactivate
        post :activate
      end
    end

    resources :users, only: %i(index create update show index) do
      member do
        post :inactivate
        post :activate
      end
    end
  end

  namespace :mananger do
  end

  namespace :user do
  end
end
