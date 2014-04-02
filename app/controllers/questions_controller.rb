class QuestionsController < ApplicationController

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to("/users")
    end
  end
    private

    def question_params
      params.require(:question).permit(
        :original_question
        )
    end

end
