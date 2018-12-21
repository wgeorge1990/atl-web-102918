Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/animals/count', to: 'animals#count'
  resources :animals, only: [:show, :index, :create]

end
