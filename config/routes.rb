Rails.application.routes.draw do


  get 'recepies/index'

  root 'home#index'

  get '/search' => 'recepies#index'
  get '/' => 'recepies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
