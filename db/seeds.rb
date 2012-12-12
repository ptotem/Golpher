# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Company.create!(name: "Ptotem Learning Projects")

AdminUser.create!(:name=>"Administrator",:email => 'admin@ptotem.com', :password => 'crimsonking', :password_confirmation => 'crimsonking', :role=>"Admin")
AdminUser.create!(:name=>"Arijit Lahiri",:email => 'arijit@ptotem.com', :password => '19loki76', :password_confirmation => '19loki76', :role=>"Projects")
AdminUser.create!(:name=>"Surbhi Sawant",:email => 'surbhi@ptotem.com', :password => 'p20o20e13', :password_confirmation => 'p20o20e13', :role=>"Sales")
AdminUser.create!(:name=>"Amol Bhor",:email => 'amol@ptotem.com', :password => 'p20o20e13', :password_confirmation => 'p20o20e13', :role=>"Sales")
AdminUser.create!(:name=>"Arunkumar Balasubramanian",:email => 'arun@ptotem.com', :password => 'p20o20e13', :password_confirmation => 'p20o20e13', :role=>"Projects")
AdminUser.create!(:name=>"Ashwin Kumar",:email => 'ashwin@ptotem.com', :password => 'p20o20e13', :password_confirmation => 'p20o20e13', :role=>"Projects")
AdminUser.create!(:name=>"Perseus Vazafdar",:email => 'perseus@ptotem.com', :password => 'p20o20e13', :password_confirmation => 'p20o20e13', :role=>"DevTeam")
AdminUser.create!(:name=>"Sunny Singh",:email => 'sunny@ptotem.com', :password => 'p20o20e13', :password_confirmation => 'p20o20e13', :role=>"DevTeam")
AdminUser.create!(:name=>"Nikunj Thakkar",:email => 'nikunj@ptotem.com', :password => 'p20o20e13', :password_confirmation => 'p20o20e13', :role=>"DevTeam")
AdminUser.create!(:name=>"Nilesh Panchal",:email => 'nilesh@ptotem.com', :password => 'p20o20e13', :password_confirmation => 'p20o20e13', :role=>"DevTeam")
AdminUser.create!(:name=>"Sachin Thakkar",:email => 'sachin@ptotem.com', :password => 'p20o20e13', :password_confirmation => 'p20o20e13', :role=>"DevTeam")
AdminUser.create!(:name=>"Rakesh Rengaraj",:email => 'rakesh@ptotem.com', :password => 'p20o20e13', :password_confirmation => 'p20o20e13', :role=>"DevTeam")
AdminUser.create!(:name=>"Indrajeet Mishra",:email => 'indrajeet@ptotem.com', :password => 'p20o20e13', :password_confirmation => 'p20o20e13', :role=>"DevTeam")

Competency.create!([{name: "Algorithm"}, {name: "Design"}, {name: "Databases"}, {name: "HTML-CSS"}, {name: "Jquery"}, {name: "Logic"}, {name: "Ruby on Rails"}])
