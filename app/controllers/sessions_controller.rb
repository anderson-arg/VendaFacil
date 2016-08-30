class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    @user = User.find_by_name(params[:session][:name])
    if !@user.blank? && @user.password == params[:session][:password]
      session[:user_id] = @user.id
      redirect_to '/'
    else
      flash[:error] = t(:message_error_login)
      redirect_to '/login'
    end 
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
