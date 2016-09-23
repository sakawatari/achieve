class NoticeMailer < ApplicationMailer
  def sendmail_blog(blog)
    @blog = blog

    mail to: "under.fild1930@gmail.com",
         subject: '【Achieve】ブログが投稿されました'
  end
  def sendmail_contact(contact)
    @contact = contact
    
    mail to: @contact.email,
         subject: '【Achieve】お問い合わせが送信されました'
  end
end
