class Goat < ApplicationRecord
  has_one_attached :picture
  belongs_to :user
  has_many :reservations
  has_many :users, through: :reservations
  validates :name, :price, :age, :race, :appetite, presence: true
end
