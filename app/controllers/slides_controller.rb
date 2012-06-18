class SlidesController < ApplicationController
	def next

		currentDisplay_name = params[:id]
		currentDisplay = Display.where("name = '"+currentDisplay_name+"'").first
		if currentDisplay != nil
			print "Hat geklappt"	
		else
			@slide = self.slide_with_display_select
		end;

    if @slide == nil
      @slide = SlideSet.first.slides.first
      @@current_slide_id = 42
    end

	end

	def slide_with_display_select
		display_select = Slide.new
		display_select.title = "Select a Display"
		display_select.content = ""
		Display.all.each do |display|
			display_select.content += display.name+"<br>"
		end
		return display_select
	end
end
