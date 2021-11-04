Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations],
         path: '',
         path_name: {
           sign_in: 'sign_in',
         },
         controllers: {
           sessions: 'sessions',
         }

  devise_scope :user do
   post "sign_up",  to: "registrations#create", as: :user_registration
  end
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

  resources :'me', controller: 'me', only: %i(update) do
    member do
      resources :assessments, only: %i(index) do
        post :answer
      end
    end
  end

  resources :records, only: %i(index)
end
