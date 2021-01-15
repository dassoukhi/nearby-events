class MailerJob < ApplicationJob
  queue_as :default

  def perform
  	puts "tache commencée"
  	sleep 5
  	puts "tache commencée"
    # Do something later
  end
end
