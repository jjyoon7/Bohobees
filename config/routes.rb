Rails.application.routes.draw do
  devise_for :users
  resources :users, except: :show

end
