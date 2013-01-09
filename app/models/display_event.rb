class DisplayEvent < ActiveRecord::Base
  belongs_to :display
  belongs_to :event
end
