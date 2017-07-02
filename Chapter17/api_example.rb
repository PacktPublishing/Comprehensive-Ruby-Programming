require 'rubygems'
require 'httparty'

class EdutechionalResty
  include HTTParty
  base_uri "http://edutechional-resty.herokuapp.com"

  def posts
    self.class.get('/posts.json')
  end
end 

api = EdutechionalResty.new
puts api.posts 