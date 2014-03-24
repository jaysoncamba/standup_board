class WelcomeController < ApplicationController

  before_filter :my_method
  skip_before_filter :require_login

  def index

  end

  def my_method
    redirect_to todos_path if current_user.present?
  end

end
