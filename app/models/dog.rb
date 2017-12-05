class Dog < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :species, presence: true
end
