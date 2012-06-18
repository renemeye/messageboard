class SlidesController < ApplicationController
	def next

		currentDisplay_name = params[:id]
		if currentDisplay_name == nil
			redirect_to :action => "slide_with_display_select"
			return
		end;

		currentDisplay = Display.where("name = '"+currentDisplay_name+"'").first
		if currentDisplay == nil
			redirect_to :action => "slide_with_display_select"
			return
		end;

    if @slide == nil
      @slide = SlideSet.first.slides.first
      @@current_slide_id = 42
    end

	end

	def slide_with_display_select
		display_select = Array.new
		Display.all.each do |display|
			display_select.append display
		end
		@display_select = display_select

		
	end
end
