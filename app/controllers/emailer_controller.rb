class EmailerController < ApplicationController
 def sendmail
    email = params["email"]
	  recipient = email["recipient"]
	  subject = email["subject"]
	  message = email["message"]
      Emailer.deliver_contact(recipient, subject, message)
      return if request.xhr?
      contact
 end
 def contact
   render :text => 'Mensaje Enviado Con Exito!'
 end
 def index
 end
 def index_contact_us
 end
 def sendmailContact
    email = params["email"]
	  recipient = email["recipient"]
	  subject = email["subject"]
	  message = email["message"]
      Emailer.deliver_contact_us(recipient, subject, message)
      return if request.xhr?
      contact_us
 end
  def contact_us
   render :text => 'Mensaje Enviado Con Exito!'
 end
end
