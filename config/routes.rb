Rails.application.routes.draw do
  get 'profits/index'
  get 'profits/show'
  get 'profits/create'
  get 'profits/update'
  get 'profits/delete'
  get 'wastes/index'
  get 'wastes/show'
  get 'wastes/create'
  get 'wastes/update'
  get 'wastes/delete'
  get 'reports/create'
  get 'users/create'
  get 'users/update'
  get 'users/show'
  get 'users/login'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
