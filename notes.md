
Charity Api to use
https://api.data.charitynavigator.org/v2

Basic concept schools run charity drives. Students choose a charity to raise funds for. This organizes the views for the school to see all charties raising money and total. Lists classroom index of students and charties.

Models
Charity
id:, :name
  has_many student_charity
  has_many pledges
  has_many students through: student_charity

student_charity
id: , student_id, charity_id



 ISSUE: student promotes charity , and other users pledges
user/pledge
 id: , pledge_id , user_id, charity_id, amount, student_id
  belongs_to pledge
  belongs_to user
  belongs_to charity

users
  types: teacher, student, guest/parent/donor, admin
  has_many pledges
  has_one teacher
  has_one student
  has_one guest

students
  id:, first_name: last_name:,  user_id, teacher_id
  belongs_to :teacher
  has_many charities through: student_charities
  has_many student_charities
  belongs_to :user

students_teacher
  id:, student_id:, teacher_id
  belongs_to  :student
  belongs_to :teacher

teachers
  id, user_id,
  belongs_to user
  has_many students_teachers
  has_many :students through students_teacher
  has_many charities through: students ??

guest/donor
  belongs_to user


  class StudentCharity < ApplicationRecord
    belongs_to :student
    belongs_to :charity


  end
