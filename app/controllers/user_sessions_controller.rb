class UserSessionsController < ApplicationController
  skip_before_filter :require_login, except: [:destroy]
  def new
    @user = User.new
  end

  def create
    @user = User.find_or_create_from_auth_hash(auth_callback)
    if @user = login(email, password)
      redirect_back_or_to(:users, notice: 'Login successful')
    else
      flash.now[:alert] = "Login failed"
      render action: "new"
    end
  end

  def destroy
    logout
    redirect_to(:users, notice: 'Logged out!')
  end

  protected

    def auth_callback
      request.env['omniauth.auth']
    end
end
