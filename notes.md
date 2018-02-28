
Charity Api to use
https://api.data.charitynavigator.org/v2

Basic concept schools run charity drives. Students choose a charity to raise funds for. This organizes the views for the school to see all charties raising money and total. Lists classroom index of students and charties.

Models
Charity
  has_many students

Donation/Pledge



users
  types: teacher, student, guest/parent/donor, admin

classroom
  belongs_to :teacher
  has_many :students


students
  belongs_to :teacher
  belongs_to :School :through :teacher
  has_many charities

teachers
  has_many :students :through classes
  belongs_to :school

schools
  has_many teachers
