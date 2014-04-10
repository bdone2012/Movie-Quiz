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
  picture_url: "https://drupal.org/files/issues/cage.jpeg",
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

brian_donegan = User.create({
  name: "Brian Donegan",
  age: "26",
  gender: "Male",
  picture_url: "http://placebear.com/200/300",
  email: "bdone2012@gmail.com",
  password: "password",
  password_confirmation: "password"
  })

cat = User.create({
  name: "Cat",
  age: "10",
  gender: "female",
  picture_url: "http://placekitten.com/600/400",
  email: "kitty@cat.com",
  password: "password",
  password_confirmation: "password"
  })

justin_bieber = User.create({
  name: "Justin Bieber",
  age: "21",
  gender: "Male",
  picture_url: "http://wac.450f.edgecastcdn.net/80450F/popcrush.com/files/2013/06/jb-dog.jpg",
  email: "justin@bieber.com",
  password: "password",
  password_confirmation: "password"
  })

cary_grant = User.create({
  name: "Cary Grant",
  age: "deceased",
  gender: "Male",
  picture_url: "http://i.telegraph.co.uk/multimedia/archive/02107/cross_grant_2107101i.jpg",
  email: "cary@grant.com",
  password: "password",
  password_confirmation: "password"
  })



@fav_80s_flick = Question.create({
  original_question: "What is your favorite 80s movie?"
  })


alien = Answer.new({ saved_answer: "Alien", question_id: @fav_80s_flick.id})
gremlins = Answer.new({ saved_answer: "Gremlins", question_id: @fav_80s_flick.id})
tootsie = Answer.new({ saved_answer: "Tootsie", question_id: @fav_80s_flick.id})
highlander = Answer.new({ saved_answer: "Highlander", question_id: @fav_80s_flick.id})
popeye = Answer.new({ saved_answer: "Popeye", question_id: @fav_80s_flick.id})
heathers = Answer.new({ saved_answer: "Heathers", question_id: @fav_80s_flick.id})
casablanca = Answer.new({ saved_answer: "Casablanca", question_id: @fav_80s_flick.id})

bill_murray.answers << alien
nicolas_cage.answers << tootsie
vanilla_ice.answers << gremlins
brian_donegan.answers << highlander
cat.answers << popeye
justin_bieber.answers << heathers
cary_grant.answers << casablanca



