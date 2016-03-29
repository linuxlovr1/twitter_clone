class DashboardController < ApplicationController
  def index
    @tweets = Tweet.order(created_at: :desc).paginate(page: params[:page])
    
  end
end
