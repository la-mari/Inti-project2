class StaticPagesController < ApplicationController
	def landing
		@publications=Publication.last(3)
	end
end
