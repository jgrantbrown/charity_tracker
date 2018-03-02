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

    Charity.create([
      { name: "Wounded Warrior Project",
        description: "Wounded Warrior Project® (WWP) serves veterans and service members who incurred a physical or mental injury, illness, or wound, co-incident to their military service on or after September 11, 2001 and their families. On that date, America watched in horror as approximately 3,000 people died including hundreds of firefighters and rescue workers. Many warriors note a sense of duty to volunteer for the military following these tragic events.",
        link: "https://www.woundedwarriorproject.org/"},
      { name: "Orca",
        description: "ORCA believes that the only way to protect our whales and dolphins is to identify areas where they’re vulnerable and study their habitats. That way, we can protect these places by changing the way we use them. That includes shipping, fishing, noise pollution, marine litter and more. Best of all, this information can be shared and used across the globe. And that’s the local solution to the global problem.",
        link: "http://www.orcaweb.org.uk"}
      ])

      Studentcharity.create([
        {student_id: 1, charity_id: 1},
        {student_id: 2, charity_id: 2},
        {student_id: 3, charity_id: 1}
      ])

Pledge.create([
  {user_id: 4,
   charity_id: 1,
   student_id: 1,
   amount: 5
 },
  {user_id: 6,
   charity_id: 2,
   student_id: 2,
   amount: 10
  },
  {user_id: 7,
   charity_id: 2 ,
   student_id: 1,
   amount: 45
  }
  ])
