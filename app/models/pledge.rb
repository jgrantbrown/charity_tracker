class Pledge < ApplicationRecord
  belongs_to :user
  belongs_to :studentcharity
  
 validates :amount, presence: true
 validates :amount, numericality: { greater_than: 0 }


end
