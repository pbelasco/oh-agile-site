# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts 'SETTING UP DEFAULT USER LOGIN'
user = Admin.create! :name => 'Pedro Belasco', :email => 'pbelasco@gmail.com', :password => 'lo9ki8', :password_confirmation => 'lo9ki8'
puts 'New user created: ' << user.name
user2 = Admin.create! :name => 'Livia Ascava', :email => 'liascava@gmail.com', :password => '1234', :password_confirmation => '1234'
puts 'New user created: ' << user2.name