Rails.application.routes.draw do
  devise_for :admins
  devise_for :members
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

end