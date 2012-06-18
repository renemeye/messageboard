class Display < ActiveRecord::Base
	belongs_to :slide
	has_many :show_times
end
