class Dog < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_attachment :photo
  validates :name, presence: true
  validates :species, presence: true
  validates :description, presence: true, length: { maximum: 300 }
  def rating
    if self.ratings.size > 0
      sum = 0
      self.ratings.each { |rating| sum += rating.rating }
      return sum / self.ratings.size.to_f
    end
    return 0
  end
end
