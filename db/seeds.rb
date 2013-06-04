User.destroy_all

data = [{name: "Eric Chang", password: "password"}]

data.each do |user_info|
  m = User.new
  m.name = user_info[:name ]
  m.password_digest = user_info[:passwrod]
  m.save
end

