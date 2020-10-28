class ContactMailer < ApplicationMailer
  
  def send_mail(contact)
    @contact = contact
     mail(
      from: 'mk575surf@gmail.com',
      to:   'mk575surf@gmail.com',
      subject: 'お問い合わせ通知'
    )
    end
 end
 