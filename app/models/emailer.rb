class Emailer < ActionMailer::Base
  def contact(recipient, subject, message, sent_at = Time.now)
      @subject = subject
      @recipients = recipient
      @from = 'no-reply@caritascbba.org'
      @sent_on = sent_at
        @body["title"] = subject
        @body["email"] = 'no-reply@caritascbba.org'
        @body["message"] = message
      @headers = {}
  end
  def contact_us(recipient, subject, message, sent_at = Time.now)
      @subject = subject
      @recipients = recipient
      @from = 'no-reply@caritascbba.org'
      @sent_on = sent_at
        @body["title"] = subject
        @body["recipient"] = recipient
        @body["message"] = message
      @headers = {}
   end
end
