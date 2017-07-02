class ApiConnector
  def initialize(title:, description:, url: 'google.com')
    @title = title
    @description = description
    @url = url
  end
end

class SmsConnector < ApiConnector
  def send_sms
    puts "Sending SMS message..."
  end
end

class MailerConnector < ApiConnector
  def send_mail
    puts "Sending mail message..."
  end
end

class PhoneConnector < ApiConnector
  def place_call
    puts "Placing phone call..."
  end
end

class XyzConnector < ApiConnector
  def does_something_else
    puts "Secret stuff..."
  end
end 

sms = SmsConnector.new(title: "Hi there!", description: "I'm in a SMS message")
mail = MailerConnector.new(title: "Hi there!", description: "I'm in an email message")
phone = PhoneConnector.new(title: "Hi there!", description: "I'm on a call")
xyz = XyzConnector.new(title: "Hi there!", description: "Who knows what I'm in")

sms.send_sms
mail.send_mail
phone.place_call
xyz.does_something_else