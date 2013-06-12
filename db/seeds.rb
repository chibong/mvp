User.destroy_all

data = [{name: "Eric Chang", password: "password", question:"How am I doing as a leader?"}, {name: "Kara Chang", password: "password", question:"How am I doing as a leader?"}]

data.each do |user_info|
  m = User.new
  m.name = user_info[:name ]
  m.password_digest = user_info[:password]
  m.user.question =[:question]
  m.save
end
puts "There are now #{User.count} users in the database"
