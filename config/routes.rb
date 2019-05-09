Rails.application.routes.draw do
  root to: 'home#index'

  resources 'chef_list', as: 'chef_list', only: [:index, :show] 
  resources 'temp_register', as: 'temp_register', only: %i[index create]
  
  namespace :neighbor do
    get 'profiles/index'
    resources :profiles
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
