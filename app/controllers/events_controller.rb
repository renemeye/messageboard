class EventsController < ApplicationController
	def list
		@display_name = params[:display]
    
    display = Display.where(:name => params[:display]).first
		if display == nil
      redirect_to :action => "empty"
      return
		end;    
    
    @display_events = display.current_events()
	end
  
  def empty
    
  end
end
