require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  
  describe "POST fetch" do

    it "fetches two users" do
      post :fetch, :format => 'js', user_1: 'brooks', user_2: 'dhh'
      expect(assigns(:users).count).to eq(2)
    end

    it "correctly picks the winner based on average star count" do
      post :fetch, :format => 'js', user_1: 'brooks', user_2: 'dhh'
      users = assigns(:users)
      expect(users.last.status(users.first)).to eq("winner")
    end

    it "correctly picks the loser based on average star count" do
      post :fetch, :format => 'js', user_1: 'brooks', user_2: 'dhh'
      users = assigns(:users)
      expect(users.first.status(users.last)).to eq("loser")
    end

    it "returns all repositories for a user" do
      post :fetch, :format => 'js', user_1: 'brooks', user_2: 'dhh'
      users = assigns(:users)
      expect(users.first.repos.count).to eq(24)
    end

    it "returns the number of total stars for a user" do
      post :fetch, :format => 'js', user_1: 'brooks', user_2: 'dhh'
      users = assigns(:users)
      expect(users.first.total_stars).to eq(12)
    end  

    it "returns the number of average stars for a user" do
      post :fetch, :format => 'js', user_1: 'brooks', user_2: 'dhh'
      users = assigns(:users)
      expect(users.first.average_stars).to eq(0.5)
    end

    it "correctly picks a tie" do
      post :fetch, :format => 'js', user_1: 'brooks', user_2: 'brooks'
      users = assigns(:users)
      expect(users.first.status(users.last)).to eq("tie")
      expect(users.last.status(users.first)).to eq("tie")
    end

    it "handles an invalid username" do
      post :fetch, :format => 'js', user_1: 'brooks', user_2: 'nekodoggy'
      users = assigns(:users)
      expect(users.last.error_message).to eql("was not found")
    end

    it "handles a user without any repositories" do
      post :fetch, :format => 'js', user_1: 'brooks', user_2: 'aaa'
      users = assigns(:users)
      expect(users.last.error_message).to eql("has no repositories")
    end

  end

end
