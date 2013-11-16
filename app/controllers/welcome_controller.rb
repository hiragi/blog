class WelcomeController < ApplicationController
  def index
    @docs = Doc.all
  end

  def login
  end

  def login_check
    @user = User.find(:first, :conditions => {:username => params[:username]})
    if @user
      if @user.god?
        redirect_to :action => "index"
      end
    end
  end

  def post
  end

  def post_blog
    Doc.create(title: params[:title], content: params[:content])
    redirect_to :action => "index"
  end

end
