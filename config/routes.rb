Rails.application.routes.draw do
  

  get 'recepies/index'

  get 'users/index'

  root 'home#index'

  get '/search' => 'recepies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
