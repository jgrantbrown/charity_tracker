class Student < ApplicationRecord
  belongs_to :teacher
  has_many :studentcharities
  has_many :charities, :through => :studentcharities
  has_many :pledges

  # def amount_pledged(charity)
  #
  #   self.pledges.where(studentcharities: charity.id).sum(:amount)
  # end
  #
  # def recent_pledges
  #     Pledge.where(studentcharities_id: self.id).last(3)
  # end

end
