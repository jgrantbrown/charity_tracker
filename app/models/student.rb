class Student < ApplicationRecord
  belongs_to :teacher
  belongs_to :user
  has_many :studentcharities
  has_many :charities, :through => :studentcharities
  has_many :pledges, :through => :studentcharities

  validates :email, presence: true
  

  def amount_pledged(charity)
    studentcharityid = self.studentcharities.where(charity_id: charity.id)
    self.pledges.where(studentcharity_id: studentcharityid).sum("amount")
  end

  def recent_pledges
      self.pledges
  end

  def email
    # Find if email matches an existing user
     # user = User.find_by(:email => params[:student][:email])
     # user.email
  end

end
