require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderMailer.received
    assert_equal "Received", mail.subject
    assert_equal ["maixuanvinh007@gmail.com"], mail.to
    assert_equal ["maixuanvinh007@gmail.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "shipped" do
    mail = OrderMailer.shipped
    assert_equal "Shipped", mail.subject
    assert_equal ["maixuanvinh007@gmail.com"], mail.to
    assert_equal ["maixuanvinh007@gmail.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
