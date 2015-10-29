class UsersController < ApplicationController
  
  def index;end

  def fetch
    @users = [ 
      User.new(params["user_1"]), 
      User.new(params["user_2"]) 
    ]
    
    respond_to do |format|
      format.js
    end
  end

end
