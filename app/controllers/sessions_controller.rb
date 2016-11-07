class SessionsController < ApplicationController
    layout "login", only: [:]

  def new
  end

  def create
    user=User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      render action: "new"
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
