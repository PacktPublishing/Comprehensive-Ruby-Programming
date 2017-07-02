require 'date'

class User
  attr_accessor :settings, :email

  def initialize(email:)
    @email = email
  end
end

class AdminUser < User
end

user = User.new(email: "user@test.com")
user.settings = {
  level: "Low Security",
  status: "Live",
  signed_in: Date.today
}

admin = AdminUser.new(email: "admin@test.com")
admin.settings = ["Editor", "VIP", Date.today]

puts user.settings
puts admin.settings 