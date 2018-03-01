class Student < ApplicationRecord
  belongs_to :teacher
  has_many :studentcharities
  has_many :charities, through: :studentcharities
end
