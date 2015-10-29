class UsersController < ApplicationController
  
  def index
    @users = []
  end

  def fetch
    @users = [data_fetch(params["user_1"]), data_fetch(params["user_2"])]
    respond_to do |format|
      format.js
    end
  end

  def data_fetch(username)
    return User.new(username)
  end

end
