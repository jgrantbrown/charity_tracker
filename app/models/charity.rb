class Charity < ApplicationRecord
  has_many :studentcharities
  has_many :students, through: :studentcharities
end