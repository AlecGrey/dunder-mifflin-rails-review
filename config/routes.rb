Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/dogs', to: 'dogs#sort', as: 'sort_dogs'
  resources :dogs, only: [:index, :show] 

  resources :employees

  
end
