# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.create([
  {first_name: 'Joe', last_name: "Smith", teacher_id: 1, user_id: 1},
  {first_name: 'Lou', last_name: "Smith", teacher_id: 1, user_id: 2},
  {first_name: 'Mike', last_name: 'Johnson', teacher_id: 1, user_id: 3},
  {first_name: 'Sue', last_name: 'Johnson', teacher_id: 2, user_id: 3},
  {first_name: 'Jill', last_name: 'Johnson', teacher_id: 2, user_id: 4},
  {first_name: 'Troy', last_name: 'Luck', teacher_id: 1, user_id: 5} ])

Teacher.create([
  {first_name: 'Sarah', last_name: 'Mills', user_id: 6},
  {first_name: 'Ari', last_name: 'Cohen', user_id: 7}
  ])

  User.create([
    {email: "test@test1.com", password: "testtest", password_confirmation: "testtest"},
    {email: "test@test2.com", password: "testtest", password_confirmation: "testtest"},
    {email: "test@test3.com", password: "testtest", password_confirmation: "testtest"},
    {email: "test@test4.com", password: "testtest", password_confirmation: "testtest"},
    {email: "test@test5.com", password: "testtest", password_confirmation: "testtest"},
    {email: "test@test6.com", password: "testtest", password_confirmation: "testtest"},
    {email: "test@test.com", password: "testtest", password_confirmation: "testtest"}

  ])
