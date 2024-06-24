class HomeController < ApplicationController
  def index
  end

  def feed
    @posts = Post.all
  end

  def about
    # Action for the About tab
  end

  def projects
    # Action for the Projects tab
  end

  def guestbook
    # Action for the Guestbook tab
  end
end
