class Pledge < ApplicationRecord
  belongs_to :student
  belongs_to :user
  belongs_to :charity

end
