class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user
      # Log the user in and redirect to the user's show page.
        log_in user
    	session[:user] = user
        redirect_to user
        
    else
      flash[:danger] = 'Invalid username'
      # Create an error message.
      render 'new'
    end

  end


  def destroy
  end
end
