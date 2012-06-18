class ShowTime < ActiveRecord::Base
	belongs_to :display
	belongs_to :slide_set
end
