class OverviewController < ApplicationController
  
  def show
    @display_name = params[:display]
    
    display = Display.where(:name => params[:display]).first
		if display == nil
      redirect_to :action => "choose"
      return
		end;            
    
    @display = display
    
    
    
  end
  
  def choose
    display_select = Array.new
		Display.all.each do |display|
			display_select.append display
		end
		@display_select = display_select
  end
  
end
