class FrontendController < ApplicationController
	def index
		@display_name = params[:display]
	end
end
