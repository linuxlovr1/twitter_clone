class LandingController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    redirect_to(dashboard_index_path) if current_user
  end
end