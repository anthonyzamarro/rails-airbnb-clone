class Dog < ApplicationRecord
  belongs_to :user

  has_many :bookings

  has_attachment :photo

  validates :name, presence: true
  validates :species, presence: true
end
