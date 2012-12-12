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


TaskMaster.create!(:name=>"Lists and Initialization")
TaskMaster.create!(:name=>"Data Modelling")
TaskMaster.create!(:name=>"Wireframe")
TaskMaster.create!(:name=>"HTML Mocks")
TaskMaster.create!(:name=>"Database Design")
TaskMaster.create!(:name=>"Logic Design")
TaskMaster.create!(:name=>"Factory Data")
TaskMaster.create!(:name=>"Plugin Selection")
TaskMaster.create!(:name=>"Logic Programming")
TaskMaster.create!(:name=>"Final Views")
TaskMaster.create!(:name=>"Testing")
TaskMaster.create!(:name=>"Final Content")
TaskMaster.create!(:name=>"Production Deployment")
TaskMaster.create!(:name=>"Bug Fixing")
TaskMaster.create!(:name=>"Documentation")


SubTaskMaster.create!(:name=>"Page List and Feature List")
SubTaskMaster.create!(:name=>"Repositarization and Wiki writeups")
SubTaskMaster.create!(:name=>"Data Modelling")
SubTaskMaster.create!(:name=>"Wireframes for xyz pages")
SubTaskMaster.create!(:name=>"Layout and Theme design for Page x")
SubTaskMaster.create!(:name=>"UI-UX Programming for Page x")
SubTaskMaster.create!(:name=>"Database design (schema, associations, validations, nesting, CRUD)")
SubTaskMaster.create!(:name=>"Admin Section Design")
SubTaskMaster.create!(:name=>"Algorithm for xyz in Excel")
SubTaskMaster.create!(:name=>"Factory Data for xyz model")
SubTaskMaster.create!(:name=>"View for xyz page")
SubTaskMaster.create!(:name=>"Sub-section for xyz page view")
SubTaskMaster.create!(:name=>"Plugin, Gem and Engine integration and customization")
SubTaskMaster.create!(:name=>"Controller and Model coding for Page x / Model x")
SubTaskMaster.create!(:name=>"Extreme cases testing")
SubTaskMaster.create!(:name=>"Deployment and Speed testing")
SubTaskMaster.create!(:name=>"Cross Browser testing")
SubTaskMaster.create!(:name=>"Responsiveness Testing")
SubTaskMaster.create!(:name=>"Creating seed content for data models")
SubTaskMaster.create!(:name=>"Creating custom content for Page/s x")
SubTaskMaster.create!(:name=>"Documentation, Snippets and Blogs")
SubTaskMaster.create!(:name=>"Assets Design")
SubTaskMaster.create!(:name=>"Assist abc in finishing his task")
SubTaskMaster.create!(:name=>"Read up on xyz")
SubTaskMaster.create!(:name=>"Client Meeting")

















