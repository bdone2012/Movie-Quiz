class AnswersController < ApplicationController

def index

  @correct_user = User.all.sample
  @correct_user.answers[0].update(value: true)
  @incorrect_users = User.all.sample(2)
  @pre_shuffle = []
  @pre_shuffle << @correct_user
  @pre_shuffle << @incorrect_users
  @shuffled = @pre_shuffle.flatten.shuffle

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

  def new_or_profile_path(profile)
    profile ? edit_profile_path(profile) : new_profile_path(profile)
  end


    private

    def answer_params
      params.require(:answer).permit(:saved_answer)
    end


end
