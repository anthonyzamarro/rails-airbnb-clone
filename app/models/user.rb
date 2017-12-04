class User < ApplicationRecord
  has_many :dogs
  has_many :bookings
end
