Rails.application.routes.draw do
  get 'dashboard/index'

  get 'landing/show'

  # Root route
  root 'landing#show'

  # Devise
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

  # Resource routes

  # Get routes

  # POST routes 

  # PUT routes

  # DELETE routes
end
