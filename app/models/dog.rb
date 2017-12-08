class Dog < ApplicationRecord
  belongs_to :user

  has_many :bookings, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_attachment :photo

  validates :name, presence: true
  validates :species, presence: true
  validates :description, presence: true, length: { maximum: 100 }
end
