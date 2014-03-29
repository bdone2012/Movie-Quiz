class SessionController < ApplicationController

  def new
  end

  def create
    #find by email
    user = User.find_by(email: params[:email])
    question = Question.find(params[:id])
    #If the the user is found and gives correct password
    if user && user.authenticate(params[:password])
      #store user id in session
      session[:user_id] = user.id
      session[:question_id] = question.id
      redirect_to("/users")
    else
      render(:new)
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to(root_path)
  end
end
