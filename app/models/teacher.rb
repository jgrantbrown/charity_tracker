class Teacher < ApplicationRecord
  has_many :students
  belongs_to :user


# Possible feature to find total pledges made by teachers students
# def student_pledge_total
#   self.students.pledges.sum(:amount)
# end

end
