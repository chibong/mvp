# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

data = [{firstname: "Eric", lastname: "Chang"}, {firstname: "Kara", lastname: "Chang"}]

data.each do |user_info|
  u = User.new
  u.firstname = user_info[:firstname]
  u.lastname = user_info[:lastname]
  u.save
end

