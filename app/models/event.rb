class Event < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  def self.search(search)
  	if search
  		
  		events = Event.where(theme: search, visible: true)

  		if events.count > 0
  			Event.where(theme: search, visible: true)
  		else
  			Event.where(visible: true)	

  		end
  		
  	else
  		self.where(visible: true)
  	end
  end

end
