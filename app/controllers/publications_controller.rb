class PublicationsController < ApplicationController
  def index
  	@publications = Publication.all
  end


  def create
  	@publication = Publication.new({
  		title: params[:title],
  		publication_date: params[:publication_date],
  		synopsis: params[:synopsis]

  		})
  	if @publication.save
      session[:publication_id] = @publication.id
      render text: 'publication saved'
  		# redirect_to '/'
  	else
  		render :index
  	end
  end
end


