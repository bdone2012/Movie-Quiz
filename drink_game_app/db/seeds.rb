User.delete_all
Answer.delete_all
Question.delete_all


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bill_murray = User.create({
  name: "Bill Murray",
  age: "56",
  gender: "Male",
  picture_url: "http://fillmurray.com/200/300",
  email: "bill@murray.com",
  password: "password",
  password_confirmation: "password"
  })

nicolas_cage = User.create({
  name: "Nicolas Cage",
  age: "56",
  gender: "Male",
  picture_url: "http://placecage.com/c/200/300",
  email: "nicolas@cage.com",
  password: "password",
  password_confirmation: "password"
  })

vanilla_ice = User.create({
  name: "Vanilla Ice",
  age: "40",
  gender: "Male",
  picture_url: "http://nicenicejpg.com/600/400",
  email: "vanilla@ice.com",
  password: "password",
  password_confirmation: "password"
  })

fav_80s_flick = Question.create({
  original_question: "What is your favorite embarrassing 80s movie?"
  })

ninja_turtles = Answer.new({ saved_answer: "Ninja Turtles", question_id: "1"})
breaking_bad = Answer.new({ saved_answer: "Breaking Bad", question_id: "1"})
tables = Answer.new({ saved_answer: "Tables", question_id: "1"})

bill_murray.answers << ninja_turtles
nicolas_cage.answers << breaking_bad
vanilla_ice.answers << tables



