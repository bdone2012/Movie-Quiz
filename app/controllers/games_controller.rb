class GamesController < ApplicationController

  def new
     # pick one answer
    @correct_answer = Answer.all.sample
    @question = @correct_answer.question
    question_answers = @question.answers
    # the incorrect answers minus the correct one so that it isn't picked again
    all_incorrect_answers = question_answers - [ @correct_answer ]
    # pick one incorrect answer
    @incorrect_answer1 = all_incorrect_answers.sample
    # subtract incorrect so isn't picked again
    mod_all_incorrect_answers = all_incorrect_answers - [@incorrect_answer1]
    # pick another incorrect answer, I seperated them for the api below
    @incorrect_answer2 = mod_all_incorrect_answers.sample
    # put all of the random picks together
    @shuffled = [@incorrect_answer1] + [@incorrect_answer2] + [ @correct_answer ]
    @shuffled.shuffle!

    @incorrect_responses = HTTParty.get("http://www.omdbapi.com/?i=&t=#{@incorrect_answer2.saved_answer.gsub(" ", "+")}")
    @incorrect_response = HTTParty.get("http://www.omdbapi.com/?i=&t=#{@incorrect_answer1.saved_answer.gsub(" ", "+")}")
    @correct_response = HTTParty.get("http://www.omdbapi.com/?i=&t=#{@correct_answer.saved_answer.gsub(" ", "+")}")

    session[:correct_answer_id] = @correct_answer.id
  end

  def finish
    @users_choice = params['users_choice'].to_i
    @correct_answer_id = session[:correct_answer_id]

    if @users_choice == @correct_answer_id
      render "win"
    else
      render "lose"
    end
  end
end

