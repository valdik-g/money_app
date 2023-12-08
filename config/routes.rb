Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :sessions, only: %i[create destroy]
      post 'sessions/create_company', to: 'sessions#create_company'
      resources :users, only: %i[index create update destroy]
      get 'users/show_current_user', to: 'users#show_current_user'
      resources :profits, only: %i[index show create update destroy]
      resources :wastes, only: %i[index show create update destroy]
      resources :reports, only: %i[create show]
      resources :companies, only:%i[show create]
      get 'companies/show_current_company', to: 'companies#show_current_company'
    end
  end
end
