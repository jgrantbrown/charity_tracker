class Pledge < ApplicationRecord
  belongs_to :user
  has_many :comments
  belongs_to :charity
  belongs_to :student

 validates :amount, presence: { message: "Must be given please" }
 validates :amount, numericality: { greater_than: 0 }
 # Need validation to protect against bignum

 def self.total_pledges
   Pledge.all.sum(:amount)
 end



  def self.highest_total_charity_pledge
     @total_pledged = Pledge.group(:charity_id).sum(:amount).max_by{|k,v| v}[1]
  end

  def self.highest_total_charity
    charity = Charity.find(Pledge.group(:charity_id).sum(:amount).max_by{|k,v| v}[0])
    charity.name
  end


end
