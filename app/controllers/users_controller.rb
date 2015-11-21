class UsersController < ApplicationController
  def new
     @user = User.new
  end

  def create
    @user = User.new(params.[:user])
    @user.save

    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def index
    if params[:status] == "activated"
      @users = User.activated
    else
      @users = User.inactivated
    end
  end

 
end
