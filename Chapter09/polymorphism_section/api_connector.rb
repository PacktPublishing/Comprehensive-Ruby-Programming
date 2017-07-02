class ApiConnector
  def initialize(title:, description:, url: 'google.com')
    @title = title
    @description = description
    @url = url
  end

  def api_logger
    puts "API Connector starting..."
  end
end

class PhoneConnector < ApiConnector
  def api_logger
    super
    puts "Phone call API connection starting..."
  end
end

phone = PhoneConnector.new(title: 'My Title', description: 'Some content')
phone.api_logger 