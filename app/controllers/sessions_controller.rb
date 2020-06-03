class SessionsController < ApplicationController
  def new
  end
  def create
    if authenticate(params[:password])
      session[:admin_mode] = true
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:admin_mode] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

  def authenticate(password)
    if BCrypt::Password.new(ENV["BC_SECRET"]) == password
      true
    else
      nil
    end
  end
end
