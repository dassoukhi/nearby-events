# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destruction des tables"
EventsUser.destroy_all
Event.destroy_all
User.destroy_all


#Add Users
puts "insertion des users"

user1 = User.new(:email => "admin@gmail.com", :password => "111111", :password_confirmation => "111111", :admin => true, :first_name => "Admin", :last_name => "Admin")
user1.save

user2 = User.new(:email => "guy@gmail.com", :password => "111111", :password_confirmation => "111111",:admin => nil, :first_name => "Guy",:last_name => "chris")
user2.save

user3 = User.new(:email => "maladealpha@gmail.com", :password => "111111", :password_confirmation => "111111",:admin => nil, :first_name => "Malade",:last_name => "Alpha")
user3.save

user4 = User.new(:email => "malik@gmail.com", :password => "111111", :password_confirmation => "111111",:admin => nil, :first_name => "Malik",:last_name => "Abraham")
user4.save

user5 = User.new(:email => "quentin@gmail.com", :password => "111111", :password_confirmation => "111111",:admin => nil, :first_name => "Quentin",:last_name => "guontaily")
user5.save

user6 = User.new(:email => "jules@gmail.com", :password => "111111", :password_confirmation => "111111",:admin => nil, :first_name => "Jules",:last_name => "Belvert")
user6.save

user7 = User.new(:email => "saleh.dassoukhi@ynov.com", :password => "111111", :password_confirmation => "111111",:admin => nil, :first_name => "Saleh",:last_name => "Dassoukhi")
user7.save


#add events
puts "insertion des events"

event1 = Event.new(:name => "Randonée au parc Misouris", 
		:adress => "Gentilly", 
		:theme => "Randonée", 
		:description => "blabla", 
		:date => "2021-01-15 19:40:00",
		:user_id => user3.id,
		:visible => true 
		)
event1.photo.attach(io: File.open("#{Rails.root}/app/assets/images/rando.jpg"), filename: 'rando.jpg')
event1.save

event2 = Event.new(:name => "Randonée au parc Misouris", 
		:adress => "Gentilly", 
		:theme => "Cinéma",
		 :description => "blabla", 
		 :date => "2021-01-15 19:40:00",
		 :user_id => user4.id,
		 :visible => true
		 )
event2.photo.attach(io: File.open("#{Rails.root}/app/assets/images/cinema.jpg"), filename: 'cinema.jpg')
event2.save

event3 = Event.new(:name => "Randonée au parc Misouris", 
		:adress => "Gentilly", 
		:theme => "Pool Party",
		 :description => "blabla", 
		 :date => "2021-01-15 19:40:00",
		 :user_id => user5.id,
		 :visible => true
		 )
event3.photo.attach(io: File.open("#{Rails.root}/app/assets/images/pool.jpg"), filename: 'pool.jpg')
event3.save

event4 = Event.new(:name => "Randonée au parc Misouris", 
		:adress => "Gentilly", 
		:theme => "Concert",
		 :description => "blabla", 
		 :date => "2021-01-15 19:40:00",
		 :user_id => user7.id,
		 :visible => true
		 )
event4.photo.attach(io: File.open("#{Rails.root}/app/assets/images/concert.jpg"), filename: 'concert.jpg')
event4.save

event5 = Event.new(:name => "Randonée au parc Misouris", 
		:adress => "Gentilly", 
		:theme => "Caritatif",
		 :description => "blabla", 
		 :date => "2021-01-15 19:40:00",
		 :user_id => user4.id
		 )
event5.photo.attach(io: File.open("#{Rails.root}/app/assets/images/vernissage.jpg"), filename: 'vernissage.jpg')
event5.save

event6 = Event.new(:name => "Randonée au parc Misouris", 
		:adress => "Gentilly", 
		:theme => "Showcase",
		 :description => "blabla", 
		 :date => "2021-01-15 19:40:00",
		 :user_id => user3.id
		 )
event6.photo.attach(io: File.open("#{Rails.root}/app/assets/images/showcase.jpg"), filename: 'showcase.jpg')
event6.save

event7 = Event.new(:name => "Randonée au parc Misouris", 
		:adress => "Gentilly", 
		:theme => "Conférence",
		 :description => "blabla", 
		 :date => "2021-01-15 19:40:00",
		 :user_id => user7.id,
		 :visible => true
		 )
event7.photo.attach(io: File.open("#{Rails.root}/app/assets/images/conference.jpg"), filename: 'conference.jpg')
event7.save

event8 = Event.new(:name => "Randonée au parc Misouris", 
		:adress => "Gentilly", 
		:theme => "Festival",
		 :description => "blabla", 
		 :date => "2021-01-15 19:40:00",
		 :user_id => user3.id,
		 :visible => true
		 )
event8.photo.attach(io: File.open("#{Rails.root}/app/assets/images/festival.jpg"), filename: 'festival.jpg')
event8.save

event9 = Event.new(:name => "Randonée au parc Misouris", 
		:adress => "Gentilly", 
		:theme => "sport",
		 :description => "blabla", 
		 :date => "2021-01-15 19:40:00",
		 :user_id => user7.id,
		 :visible => true
		 )
event9.photo.attach(io: File.open("#{Rails.root}/app/assets/images/foot.jpg"), filename: 'foot.jpg')
event9.save

event10 = Event.new(:name => "Randonée au parc Misouris", 
		:adress => "Gentilly", 
		:theme => "Jeux vidéo",
		 :description => "blabla", 
		 :date => "2021-01-15 19:40:00",
		 :user_id => user6.id,
		 :visible => true
		 )
event10.photo.attach(io: File.open("#{Rails.root}/app/assets/images/gaming.jpg"), filename: 'gaming.jpg')
event10.save
