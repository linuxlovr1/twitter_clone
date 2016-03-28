class LandingController < ApplicationController
  def show
    redirect_to(dashboard_index_path) if current_user
  end
end