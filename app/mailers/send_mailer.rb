class SendMailer < ApplicationMailer
	default from: 'saleh.dassoukhi@ynov.com'

  def submission
    @message = params[:message]
    @user = params[:user]
    mail(to: @user.email, subject: 'About your event added')
  end
end
