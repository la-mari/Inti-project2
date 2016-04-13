class SessionsController < ApplicationController
  def new
    @users = User.all
    @publications = Publication.all
  end

  def create
  	user = User.find_by(user_name: params[:user_name])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		# render text: 'user is logged in'
  		redirect_to publications_path
  	else 
  		render :new
  	end
  end

  def destroy
  	session.delete(:user_id)
  	redirect_to '/'
  end
end
