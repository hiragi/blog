class WelcomeController < ApplicationController
  def index
    @docs = Doc.all
  end

  def login
  end

  def login_check
    @user = User.find(:first, :conditions => {:username => params[:username]})
    if @user
      cookies[:username] = params[:username]
    end
    redirect_to :action => "index"
  end

  def post
  end

  def post_blog
    Doc.create(title: params[:title], content: params[:content])
    redirect_to :action => "index"
  end

end
