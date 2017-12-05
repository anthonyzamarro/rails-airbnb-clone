class User < ApplicationRecord
  has_many :dogs
  has_many :bookings

  # validates :name, presence: true, on: :update
  # validates :city, presence: true, on: :update
  # validates :owner, presence: true, on: :update
end
