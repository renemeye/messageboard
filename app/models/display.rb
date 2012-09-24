class Display < ActiveRecord::Base
	belongs_to :slide
	has_many :show_times, :order => '"priority" DESC'
  has_many :display_events
  has_many :events, :through => :display_events, :order => '"start_time" ASC'
  attr_accessible :title, :image

	def turn_to_next_slide
		current_slide_set = self.current_show_time.slide_set
		
		if current_slide_set == nil
			#do not turn the page
			return self.slide
		end

		self.slide = current_slide_set.next_slide_from(self.slide_id)
		self.save
		return self.slide
	end
  
  def current_events
    events = Array.new
		self.events.each do |event|
      if Time.now < event.end_time and Time.now > event.start_time    
        events.append event
      elsif Time.now < event.end_time and event.show_flags == "before_day" and Time.now > event.start_time.at_beginning_of_day
        events.append event
      elsif Time.now < event.end_time and event.show_flags == "before_week" and Time.now > event.start_time.at_beginning_of_week
        events.append event
      elsif event.show_flags == "full_day" and Time.now > event.start_time.at_beginning_of_day and Time.now < event.end_time.midnight
        events.append event
      elsif event.show_flags == "full_week" and Time.now > event.start_time.at_beginning_of_week and Time.now < event.end_time.at_end_of_week.midnight
        events.append event
      end
    end
    return events
  end

	def current_show_time
		self.show_times.each do |show_time|
			if Time.now.seconds_since_midnight.between? show_time.start_time.seconds_since_midnight, show_time.end_time.seconds_since_midnight
				return show_time
			end
		end
		return self.show_times.find(:all, :limit => 1).first
	end
end
