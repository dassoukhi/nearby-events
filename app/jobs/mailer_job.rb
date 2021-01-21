class MailerJob < ApplicationJob
  queue_as :default

  def perform(user, message)
  	puts "tache commencée"
    SendMailer.with(user: user, message: message).submission.deliver
    puts "tache finie"
  end

end
