class AnswersController < ApplicationController

def index
end

  def new
    @answer = Answer.new
    @question = Question.find(1)
  end


  def create
    @answer = Answer.new(answer_params)
    @answer[:user_id] = session[:user_id]
    @answer[:question_id] = params[:answer][:question_id]
    if @answer.save
      redirect_to("/users")
    end
  end

  def show
    @answer
  end


  def chosen_answers
    @chosen_answers = User.all.sample[0].saved_answer
  end


    private

    def answer_params
      params.require(:answer).permit(:saved_answer)
    end


end
