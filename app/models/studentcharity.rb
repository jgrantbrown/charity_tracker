class Studentcharity < ApplicationRecord
  belongs_to :student
  belongs_to :charity
end
