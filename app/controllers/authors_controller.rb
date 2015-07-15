class AuthorsController < ApplicationController

	def index
		@authors = Author.where('authored_type == ?', params[:authored])
	end

end
