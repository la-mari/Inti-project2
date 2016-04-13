class PublicationsController < ApplicationController
  def index
  	@user = User.find(session[:user_id])
    @publication = @user.publications.new
  end

  def new
    @user = User.find(session[:user_id])
    @publication = @user.publications.new
  end

  def show
    @publication = Publication.find(params[:id])
  end

  def edit
    @publication = Publication.find(params[:id])
  end

  def update
    if @publication.update_attributes(publication_params)
      redirect_to publication_path
    else
      render :edit
    end
  end

  def create
    # @publication = Publication.new
    @user = User.find(session[:user_id])
    @publication = @user.publications.new(publication_params)

  	if @publication.save
      # render text: 'publication saved'
  		redirect_to publications_path
  	else
  		render :new
  	end
  end

  private

  def publication_params
      params.require(:publication).permit(:title, :publication_date, :synopsis)
  end


end


