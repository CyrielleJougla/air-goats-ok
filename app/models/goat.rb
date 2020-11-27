class Goat < ApplicationRecord
  APPETITE = ["A les crocs", "Trop trop la dalle", "Dévoreuse de prés"]
  RACE = %w(Alpine Angora Naine Poitevine Provençale)
  has_one_attached :picture
  belongs_to :user
  has_many :reservations
  has_many :users, through: :reservations
end
