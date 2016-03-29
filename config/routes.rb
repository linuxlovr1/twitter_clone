Rails.application.routes.draw do
  get 'tweets/show'

  get 'tweets/new'

  get 'tweets/edit'

  # Root route
  root 'landing#show'

  # Devise
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

  # Resource routes
  resources :tweets, except: :index
  resources :profile, only: [:show, :edit, :update] do 
    resources :address
  end


  # Get routes
  get 'dashboard/index'

  # POST routes 

  # PUT routes

  # DELETE routes
end
