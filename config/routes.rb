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
end
