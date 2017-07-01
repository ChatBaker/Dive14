require 'test_helper'

class NoticeMailerTest < ActionMailer::TestCase
  test "sendmail_Insta" do
    mail = NoticeMailer.sendmail_Insta
    assert_equal "Sendmail insta", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
