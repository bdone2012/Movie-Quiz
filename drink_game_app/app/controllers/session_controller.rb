class SessionController < ApplicationController

  def new
  end

  def create
    #find by email
    user = User.find_by(email: params[:email])
    #If the the user is found and gives correct password
    if user && user.authenticate(params[:password])
      #store user id in session
      session[:user_id] = user.id
      redirect_to("/users")
    else
      render(:new)
    end
  end
end
