class Dog < ApplicationRecord
  belongs_to :user

  has_many :bookings

  validates :name, presence: true
  validates :species, presence: true
end
