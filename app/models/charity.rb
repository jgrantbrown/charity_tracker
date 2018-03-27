class Charity < ApplicationRecord
  # has_many :studentcharities

  # has_many :pledges, through: :studentcharities

  has_many :studentcharities
  has_many :students, through: :studentcharities
  has_many :pledges
end
