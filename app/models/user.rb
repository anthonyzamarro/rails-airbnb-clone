class User < ApplicationRecord
  has_many :dogs, dependent: :destroy
  has_many :bookings

  belongs_to :registration

  validates :name, presence: true, on: :update
  validates :city, presence: true, on: :update
end
