class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  end

  def create
  	@user = User.new({
  		user_name: params[:user_name],
  		password: params[:password],
  		# going to save it to the password digest
  		password_confirmation: params[:password_confirmation]
  		# these come from the table in the model
  		})
  	if @user.save
      session[:user_id] = @user.id
  		redirect_to '/'
  	else
  		render :new
  	end
  end
end
