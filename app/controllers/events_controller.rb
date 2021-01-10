class EventsController < ApplicationController
	before_action :set_event , only: [:show, :edit, :update]

    def index
        @events = policy_scope(Event)
    end

    def new
    	@event = Event.new
    	authorize @event
    end
    def show
    end
    def create
    	@event = Event.new(event_params)
    	authorize @event
    	@event.user = current_user

    	if @event.save
    		redirect_to event_path(@event)
		else
    		render 'new'
    	end
    end

    def edit    	
    end

    def update
    	@event.update(event_params)
    	redirect_to event_path(@event)
    end

    private
    def set_event
    	@event = Event.find(params[:id])
    	authorize @event
    end

    private 
    def event_params
    	params.require(:event).permit(:name, :adress, :theme, :description, :date, :photo)
    end
end
