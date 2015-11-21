class LoginsController < ApplicationController
  def create
  	if user = User.authenticate(params[:username], params[:password])
      
      session[:current_user_id] = user.id
      redirect_to root_url
    end

  def destroy
    @_current_user = session[:current_user_id] = nil
    flash[:notice] = "You have successfully logged out."
    redirect_to root_url
  end
end
