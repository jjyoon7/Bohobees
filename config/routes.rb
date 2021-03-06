Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'users/registrations', omniauth_callbacks: 'users/omniauth_callbacks' }

  # devise onmiauth



  resource :profile, only: [:show, :edit, :update]
  # as a traveller you can see the search result and then choose the specific event
  # and then create a request to that dinner/lunch/breakfast event
  resources :events, only: [:index, :show] do
    resources :reservations, only: [:new, :create]
  end

  # dashboard where user can see their own activities /
  # host can  see the list of the event they created deny or accept the traveller
  # traveller can see the list of their request and cancel the request
  get "/dashboard", to: "dashboard#show"

  namespace :dashboard do
    # at the dashboard page, you can see your profile and also eit and update it.


    # at the dasboard page, you can see the event, create, edit, update everything!
    resources :events, except: :index

    # as event host, you can see all your inqueries for every event and accpet or decline an inquery
    resources :inquiries, only: [:index, :show] do
      member do
        get :accept
        get :deny
      end
    end

    # as traveller, you can see all your reservations and cancel a reservation
    resources :reservations, only: [:index, :show] do
      member do
        get :cancel
      end
    end
  end

  root 'pages#home'

  # resources :users, except: :show

  # namespace :profile do
  #   resources :users, only: :show
  # end


end
