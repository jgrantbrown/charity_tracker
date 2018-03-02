class Student < ApplicationRecord
  belongs_to :teacher
  has_many :studentcharities
  has_many :charities, through: :studentcharities
  has_many :pledges

  def amount_pledged
    self.pledges.inject(0) do |sum,x|
        sum + x.amount
      end
  end

end
