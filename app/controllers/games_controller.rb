class GamesController < ApplicationController

  def new
    @correct_answer = Answer.all.sample
    @question = @correct_answer.question
    question_answers = @question.answers
    all_incorrect_answers = question_answers - [ @correct_answer ]
    @incorrect_answer1 = all_incorrect_answers.sample
    mod_all_incorrect_answers = all_incorrect_answers - [@incorrect_answer1]
    @incorrect_answer2 = mod_all_incorrect_answers.sample
    @shuffled = [@incorrect_answer1] + [@incorrect_answer2] + [ @correct_answer ]
    @shuffled.shuffle!

    session[:correct_answer_id] = @correct_answer.id

    @correct_response = HTTParty.get("http://www.omdbapi.com/?i=&t=#{@correct_answer.saved_answer}")
    @incorrect_response = HTTParty.get("http://www.omdbapi.com/?i=&t=#{@incorrect_answer1.saved_answer}")
    @incorrect_responses = HTTParty.get("http://www.omdbapi.com/?i=&t=#{@incorrect_answer2.saved_answer}")
  end

def httparty

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

