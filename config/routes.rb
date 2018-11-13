Rails.application.routes.draw do
  namespace :site do
    get 'home/index'
    get 'analyzes/index'
    get 'analyzes/update_analyze', to: 'analyzes#update_analyze', as: 'update_analyze'
#    get 'analyzes /update_counties', as: 'update_counties'
  end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :admins
  devise_for :members
 #get 'site/home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'site/home#index'

end
