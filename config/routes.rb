Rails.application.routes.draw do
  namespace :site do
    get 'home/index'
    get 'home/analyze'
  end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :admins
  devise_for :members
 #get 'site/home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'site/home#index'

end
