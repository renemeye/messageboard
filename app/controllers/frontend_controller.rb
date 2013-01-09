class FrontendController < ApplicationController
	def index
		@display_name = params[:display]
    
    display = Display.where(:name => params[:display]).first
		if display == nil
      @display_title = nil
      @display_image = nil
    else
      @display_title = display.title
      @display_image = display.image
		end;
    
    
	end
end
