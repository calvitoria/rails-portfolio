class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @guestpost = GuestPost.new(guestpost_params)

    if @guestpost.save
      redirect_to guestbook_path, notice: 'Your post has been added!'
    else
      render :guestbook, status: :unprocessable_entity
    end
  end

  private

  def guestpost_params
    params.require(:guestpost).permit(:title, :body)
  end
end
