class SlideSet < ActiveRecord::Base
	has_many :slide_orders
	has_many :slides, :through => :slide_orders
	has_many :show_times

	def next_slide_from current_slide_id 	
			order_by = (self.random)?"RANDOM()":"'slide_orders'.'order' DESC"

			sorted_slides = self.slides.find(:all, :order => order_by)

			if(self.random)
				return sorted_slides.first
			end

			return_next_slide = false
			sorted_slides.each do |slide|
				if return_next_slide
					return slide
				end

				if slide.id==current_slide_id
					return_next_slide = true
				end
			end
			return sorted_slides.first
	end
end
