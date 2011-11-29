class ContactUsController < ApplicationController

    def sendmail
    email = params["email"]
	  recipient = email["recipient"]
	  subject = email["subject"]
	  message = email["message"]
      Emailer.deliver_contact(recipient, subject, message)
      return if request.xhr?
      render :text => 'Mensaje Enviado Con Exito!'
   end
  def index
      render :file => 'app\views\contact_us\index.rhtml'
   end
end
