class ApiConnector
  def initialize(title, description, url)
    @title = title
    @description = description
    @url = url
  end
  def testing_initializer
    puts @title
    puts @description
    puts @url
  end 
end 

api = ApiConnector.new("My title", "My cool description", "google.com") 