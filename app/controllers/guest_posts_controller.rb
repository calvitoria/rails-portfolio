class GuestPostsController < ApplicationController
  def index
    @guestpost = GuestPost.new
    @guestposts = GuestPost.order(created_at: :desc)
  end

  def create
    @guestpost = GuestPost.new(guestpost_params)

    if @guestpost.save
      redirect_to guestbook_path
    else
      @guestposts = GuestPost.all
      render :index, status: :unprocessable_entity
    end
  end

  private

  def guestpost_params
    params.require(:guest_post).permit(:author, :title, :body)
  end
end
