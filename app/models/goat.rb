class Goat < ApplicationRecord
  APPETITE = ["a les crocs", "trop trop la dalle", "level expert : dévoreuse de prés"]
  RACE = %w(alpine angora naine poitevine provençale)
  has_one_attached :picture
  belongs_to :user
  has_many :reservations
  has_many :users, through: :reservations
end
