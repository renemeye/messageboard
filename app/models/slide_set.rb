class SlideSet < ActiveRecord::Base
	has_many :slide_orders
	has_many :slides, :through => :slide_orders
	has_many :show_times
end
