Rails.application.routes.draw do
  get 'pages/secret'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'users#new'

  get 'users/new' => 'users#new', as: :new_user # sign up page with form

  post 'users' => 'users#create'  # create (post) action for when sign up form is submitted:

  get '/login'     => 'sessions#new'   # log in page with form:

  post '/login'    => 'sessions#create'   # create (post) action for when log in form is submitted:

  delete '/logout' => 'sessions#destroy'   # delete action to log out:

end
