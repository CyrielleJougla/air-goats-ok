class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :goat
  validates :start_date, :end_date, presence: true
end
