class SlideOrder < ActiveRecord::Base
  belongs_to :slide
  belongs_to :slide_set
end
