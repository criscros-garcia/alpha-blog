Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'

   resources :articles
   # get '/articles', to: 'articles#index'
   # get '/articles/new', to: 'articles#new'
   # post '/articles', to: 'articles#create'
   # get '/articles/:id/', to: 'articles#show'
   # get '/articles/:id/edit', to: 'articles#edit'
   # patch '/articles/:id/', to: 'articles#update'
   # put '/articles/:id/', to: 'articles#update'
   # delete '/articles/id', to: 'articles#destroy'

  get  'signup', to: 'users#new'
  #post 'users', to: 'users#create'
  resources :users, except: [:new]

  get    'login',  to: 'sessions#new'
  post   'login',  to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :categories, except: [:destroy]

end
