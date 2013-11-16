class WelcomeController < ApplicationController
  def index
  end

  def login
  end

  def login_check
    @user = User.find(:first, :conditions => {:username => params[:username]})
    if @user
      if @user.god?
        redirect_to :action => "index"
      else
        @user = "you are member!"
      end
    end
  end

end
