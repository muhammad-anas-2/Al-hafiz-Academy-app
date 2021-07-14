Rails.application.routes.draw do
  root 'courses#index'
  get  'about', to: 'pages#about'
  get  'courses/new'
  resources :students
  get 'login', to: 'logins#new'
  post 'login', to: 'logins#create'
  delete 'logout', to: 'logins#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
