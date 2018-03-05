class Studentcharity < ApplicationRecord
  has_many :pledges
  has_many :users, through: :pledges
  belongs_to :student
  belongs_to :charity
end
