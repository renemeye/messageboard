class SlidesController < ApplicationController
	def next
		currentSlide_id = params[:id].to_i #later we will get that from the database
		SlideSet.first.slides.each do |slide|
			if slide.id == currentSlide_id
				@slide = slide 
				return
			end
		end

		if @slide == nil
			@slide = SlideSet.first.slides.first
			@@current_slide_id = 42
		end
	end
end
