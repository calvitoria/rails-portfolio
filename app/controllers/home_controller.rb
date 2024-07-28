class HomeController < ApplicationController
  def index
  end

  def feed
    @posts = Post.all
  end

  def projects
    @projects = Project.all
  end

  def guestbook
    # Action for the Guestbook tab
  end
end
