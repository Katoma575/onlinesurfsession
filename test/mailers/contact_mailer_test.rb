require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
  
   def contact
     contact = Contact.new(name: "加藤 雅樹", message: "問い合わせメッセージ")

     ContactMailer.send_mail(contact)
   end
end
