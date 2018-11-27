Rails.application.routes.draw do
  resources :cohorts
  resources :students, except: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
