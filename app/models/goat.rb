class Goat < ApplicationRecord
  has_one_attached :picture
  belongs_to :user
  has_many :reservations
  has_many :users, through: :reservations
end
