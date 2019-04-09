Rails.application.routes.draw do
  root 'landing_page#index'

  resources 'chef_list', as: 'chef_list', only: %i[index]
  resources 'news_feed', as: 'news_feed', only: %i[index]
  resources 'temp_register', as: 'temp_register', only: %i[index create]
  
  namespace :accounts do
    get 'profiles/index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
