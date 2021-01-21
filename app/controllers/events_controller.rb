class EventsController < ApplicationController
    skip_before_action :authenticate_user!, only: :index
	before_action :set_event , only: [:show, :edit, :update, :destroy]

    def index
        @events = policy_scope(Event.search(params[:search]))
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
    		redirect_to new_event_path , notice: "Votre événement sera exmaminé par un Admin avant sa publication, un mail vous sera envoyé par la suite."
		else
    		render 'new'
    	end
    end

    def edit    	
    end

    def update
        before = @event.visible
    	@event.update(event_params)
        after = @event.visible
        if !before && after
            message = "Felicitation, votre evenement vient d'être accepter et publier sur notre site."
            SendMailer.with(user: @event.user, message: message).submission.deliver_later
        end
    	redirect_to event_path(@event)
    end

    def destroy
        message = "Votre evenement à été rejeté car il n'est pas conforme avec notre politique d'utilisation."
        if !@event.visible?
            SendMailer.with(user: @event.user, message: message).submission.deliver_later
        end
        EventsUser.where(event_id: @event.id).destroy_all
        @event.destroy
      
        if current_user.admin?
          redirect_to proposition_path

        else
            redirect_to events_path
        end
    end

    private
    def set_event
    	@event = Event.find(params[:id])
    	authorize @event
    end

    private 
    def event_params
    	params.require(:event).permit(:name, :adress, :theme, :description, :date, :photo, :visible, :search)
    end
end
