class AddAuthorToGuestPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :guest_posts, :author, :string
  end
end
