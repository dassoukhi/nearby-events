class EventsUsersController < ApplicationController


	def create
    	@participe = EventsUser.new(:event_id => params[:event_id], :user_id => params[:user_id])
    	authorize @participe.event
    	if @participe.save
    		redirect_to event_path(@participe.event)
		else
    		redirect_to event_path(@participe.event)
    	end
    end
    def destroy
    	@participe = EventsUser.find(params[:id])
    	@event = @participe.event
    	authorize @event
		@participe.destroy
		redirect_to event_path(@event)
	end
    def set_restaurant
		@participe = EventsUser.find(params[:id])
	end
	
end
