class Pledge < ApplicationRecord
  belongs_to :user
  belongs_to :studentcharity


  has_many :comments

 validates :amount, presence: { message: "Must be given please" }
  validates :amount, numericality: { greater_than: 0 }
 # Need validation to protect against bignum

end
