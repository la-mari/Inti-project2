class UsersController < ApplicationController
  def index
  	@users = User.all
    @publications = Publication.all
  end

  def new
    @user = User.new
  end

  def create
  	@user = User.new({
  		user_name: params[:user_name],
  		password: params[:password],
  		password_confirmation: params[:password_confirmation]
  		})
  	if @user.save
      session[:user_id] = @user.id
  		redirect_to '/'
  	else
  		render :new
  	end
  end
end
