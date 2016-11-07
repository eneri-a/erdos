class SessionsController < ApplicationController
  def new
  end

  def create
    user=User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      if !user
        flash.now[:notice] = "User not found"
      else
        flash.now[:notice] = "Incorrect password"
      end
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
