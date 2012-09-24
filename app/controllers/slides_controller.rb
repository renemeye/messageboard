class SlidesController < ApplicationController
	def next

		currentDisplay_name = params[:display]
		if currentDisplay_name == nil
			redirect_to :action => "slide_with_display_select"
			return
		end;

		currentDisplay = Display.where("name = '"+currentDisplay_name+"'").first
		if currentDisplay == nil
			redirect_to :action => "slide_with_display_select"
			return
		end;

		@slide = currentDisplay.turn_to_next_slide

	end
  
  def show
    
    # display is just the name of the first arg
    slide_id = params[:display].to_i
    
    @slide = Slide.where(:id=>slide_id).first
    render "next"
    
  end

	def slide_with_display_select
		display_select = Array.new
		Display.all.each do |display|
			display_select.append display
		end
		@display_select = display_select

		
	end
end
