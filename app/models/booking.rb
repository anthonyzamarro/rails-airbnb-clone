class Booking < ApplicationRecord
  belongs_to :dog
  belongs_to :user

  # def approve
  #   self.status = "approved"
  #   redirect_to profile_path
  # end
end
