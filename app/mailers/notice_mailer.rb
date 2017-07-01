class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_Insta.subject
  #
  def sendmail_Insta(instum)
    @instum = instum
    @greeting = "Hi"

    mail to: "alp2momo515522@gmail.com",
          subject: '【Dive14】写真が投稿されました'
   end
end
