class GamesController < ApplicationController

  def new
    @correct_answer = Answer.all.sample
    @question = @correct_answer.question
    question_answers = @question.answers
    all_incorrect_answers = question_answers - [ @correct_answer ]
    @incorrect_answers = all_incorrect_answers.sample(2)
    @shuffled = @incorrect_answers + [ @correct_answer ]
    @shuffled.shuffle!

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

