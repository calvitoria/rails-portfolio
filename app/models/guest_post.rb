class GuestPost < ApplicationRecord
  # TODO: implement when ui have indicator that fielcs are required
  # validates :author, :title, :body, presence: true
  has_one_attached :avatar
end
