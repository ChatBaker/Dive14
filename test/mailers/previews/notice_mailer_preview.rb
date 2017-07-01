# Preview all emails at http://localhost:3000/rails/mailers/notice_mailer
class NoticeMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notice_mailer/sendmail_Insta
  def sendmail_Insta
    NoticeMailer.sendmail_Insta
  end

end
