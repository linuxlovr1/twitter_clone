require 'rails_helper'

RSpec.describe TweetsController, type: :controller do
  let(:tweet) { FactoryGirl.create(:tweet) }


  describe "GET #show" do
    it "returns http success" do
      get :show, tweet.id
      expect(response).to have_http_status(:success)
    end

    it 'renders the show template' do 

    end

    it 'set the tweet instance variable' do 
      get :show, id: tweet.id 
      expect(assigns(:tweet)).to eq(tweet)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "render the new template" do 

    end

    it 'initialize a new tweet in tweet instance variable' do 
      tweet = Tweet.create! valid_attributes
      get :edit, {:id => tweet.to_param}, valid_session
      expect(assigns(:tweet)).to eq(tweet)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end

    it "renders the edit template" do 

    end

    it 'sets the tweet instance variable' do 

    end
  end

  describe "POST #create" do 

    it 'creates a tweet' do 
    end

    it ' rnders the new template on error' do 

    end

    it 'redirects to tweets path on success' do 

    end
  end

  describe "PUT #update" do 
    
    it 'updates a tweet' do 

    end

    it 'renders the edit template on error' do 

    end

    it 'redircts to the tweet path on success' do 

    end
  end

  describe 'DELETE #destroy' do 
    
    it 'deletes a tweet' do 

    end

    it 'redirects to tweets path on success' do 

    end
  end
end
