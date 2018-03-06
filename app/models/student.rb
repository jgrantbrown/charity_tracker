class Student < ApplicationRecord
  belongs_to :teacher
  has_many :studentcharities
  has_many :charities, :through => :studentcharities
  has_many :pledges, :through => :studentcharities

  def amount_pledged(charity)
    studentcharityid = self.studentcharities.where(charity_id: charity.id)
    self.pledges.where(studentcharity_id: studentcharityid).sum("amount")
  end


  def recent_pledges
  
      self.pledges.last(3)
  end

end
