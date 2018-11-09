# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all 

emma = User.create!(username: 'emma')
erica = User.create!(username: 'erica')
bob = User.create!(username: 'bob')

Poll.destroy_all 

poll1 = Poll.create!(title: 'Best House', user_id: erica.id)
poll2 = Poll.create!(title: 'Best Food', user_id: emma.id)

Question.destroy_all 

q1 = Question.create!(poll_id: poll1.id, body: "Which Harry Potter house is the best?")
q2 = Question.create!(poll_id: poll2.id, body: "Which food is the best?")
q3 = Question.create!(poll_id: poll1.id, body: "Which harry potter character is the best?")
q4 = Question.create!(poll_id: poll2.id, body: "What kind of pizza is best?")

AnswerChoice.destroy_all

ac1 = AnswerChoice.create!(question_id: q1.id, option: "Gryffindor")
ac2 = AnswerChoice.create!(question_id: q1.id, option: "HufflePuff")
ac3 = AnswerChoice.create!(question_id: q1.id, option: "Ravenclaw")
ac4 = AnswerChoice.create!(question_id: q1.id, option: "Slytherin")

ac5 = AnswerChoice.create!(question_id: q3.id, option: "Harry Potter")
ac6 = AnswerChoice.create!(question_id: q3.id, option: "Hermione Granger")
ac7 = AnswerChoice.create!(question_id: q3.id, option: "Ron Weasley")
ac8 = AnswerChoice.create!(question_id: q3.id, option: "Albus Dumbledore")

ac9 = AnswerChoice.create!(question_id: q2.id, option: "Pancakes")
ac10 = AnswerChoice.create!(question_id: q2.id, option: "Pizza")
ac11 = AnswerChoice.create!(question_id: q2.id, option: "Chocolate Cake")
ac12 = AnswerChoice.create!(question_id: q2.id, option: "Grilled Cheese")

ac13 = AnswerChoice.create!(question_id: q4.id, option: "Cheese")
ac14 = AnswerChoice.create!(question_id: q4.id, option: "Pepperoni")
ac15 = AnswerChoice.create!(question_id: q4.id, option: "Pineapple")
ac16 = AnswerChoice.create!(question_id: q4.id, option: "Italian Sausage")

Response.destroy_all

r1 = Response.create!(user_id: erica.id, answer_choice_id: ac2.id)
r2 = Response.create!(user_id: erica.id, answer_choice_id: ac6.id)
r3 = Response.create!(user_id: erica.id, answer_choice_id: ac12.id)
r4 = Response.create!(user_id: erica.id, answer_choice_id: ac13.id)
r5 = Response.create!(user_id: emma.id, answer_choice_id: ac4.id)
r6 = Response.create!(user_id: emma.id, answer_choice_id: ac5.id)
r7 = Response.create!(user_id: emma.id, answer_choice_id: ac10.id)
r8 = Response.create!(user_id: emma.id, answer_choice_id: ac16.id)
r9 = Response.create!(user_id: bob.id, answer_choice_id: ac3.id)
r10 = Response.create!(user_id: bob.id, answer_choice_id: ac6.id)
