class PublicationsController < ApplicationController
  def index
  	@user = User.find(session[:user_id])
    @publication = @user.publications.new
  end

  def new
    @user = User.find(session[:user_id])
    @publication = @user.publications.new
  end

  # def show
  #   @publication = Publication.find(params[:id])
  # end


  def create
    # @publication = Publication.new
    @user = User.find(session[:user_id])

    # @publication = Publication.new(publication_params)
    # @publication.user_id = session[:user_id]
    @publication = @user.publications.new({
  	# @publication = Publication.new({
  		title: params[:title],
  		publication_date: params[:publication_date],
  		synopsis: params[:synopsis]
  		})
  	if @publication.save
      # session[:publication_id] = @publication.id
      # render text: 'publication saved'
  		redirect_to '/publications/index'
  	else
  		render :index
  	end
  end
end


