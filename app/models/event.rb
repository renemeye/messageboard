class Event < ActiveRecord::Base
  validates_inclusion_of :show_flags, :in => %w(full_day full_week before_day before_week)

  
end
