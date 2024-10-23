# frozen_string_literal: true

class GuestPostComponent < ViewComponent::Base
  include CalvatarHelper

  def initialize(guestpost:)
    @guestpost = guestpost
    super()
  end
end
