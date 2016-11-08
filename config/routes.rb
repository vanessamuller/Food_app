Rails.application.routes.draw do


  get 'recepies/index'

  root 'home#index'

  get '/search' => 'recepies#index'

  
end
