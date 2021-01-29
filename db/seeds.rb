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

event2 = Event.new(:name => "Soirée cinema", 
		:adress => "Gentilly", 
		:theme => "Cinéma",
		 :description => "Film : Avenger End Game. \n\n
		 Thanos ayant anéanti la moitié de l’univers,
		 les Avengers restants resserrent les rangs dans ce vingt-deuxième film des Studios Marvel, 
		 grande conclusion d’un des chapitres de l’Univers Cinématographique Marvel.", 
		 :date => "2021-01-15 19:40:00",
		 :user_id => user4.id,
		 :visible => true
		 )
event2.photo.attach(io: File.open("#{Rails.root}/app/assets/images/cinema.jpg"), filename: 'cinema.jpg')
event2.save

event3 = Event.new(:name => "Pool Party & BBQ", 
		:adress => "Montpellier", 
		:theme => "Pool Party",
		 :description => "Le temps est chaud maintenant que l'été est arrivé.
		 Nous célébrons l'anniversaire de Dass avec de la bonne nourriture et de la bière.\n
		 Apportez votre bikini ou votre short de bain et ne tardez pas, 
		 nous la surprendrons au bord de la piscine pour son anniversaire spécial.", 
		 :date => "2021-01-15 19:40:00",
		 :user_id => user5.id,
		 :visible => true
		 )
event3.photo.attach(io: File.open("#{Rails.root}/app/assets/images/pool.jpg"), filename: 'pool.jpg')
event3.save

event4 = Event.new(:name => "The weeknd au stade de France", 
		:adress => "Paris", 
		:theme => "Concert",
		 :description => "Aprés le succés international de son album After hour, the weeknd vient nous faire vibrer au 
		 stade de France.
		 prenez très vite votre vos billets ou vous le regrettez toute une vie.\n
		 On vous dit que c'est le concert du siècle.", 
		 :date => "2021-01-15 19:40:00",
		 :user_id => user7.id,
		 :visible => true
		 )
event4.photo.attach(io: File.open("#{Rails.root}/app/assets/images/concert.jpg"), filename: 'concert.jpg')
event4.save

event5 = Event.new(:name => "Enfants sans Cancer", 
		:adress => "Paris", 
		:theme => "Caritatif",
		 :description => "La plus grande course caritative en France. Depuis 2012, Imagine for Margo organise la course Enfants sans Cancer,
		  qui a pour but de mobiliser le plus grand nombre à la cause du cancer des enfants afin de collecter des dons pour la recherche.\n
		  Trois parcours sont proposés au coureurs qui peuvent venir seuls ou en équipes.", 
		 :date => "2021-01-15 19:40:00",
		 :user_id => user4.id
		 )
event5.photo.attach(io: File.open("#{Rails.root}/app/assets/images/vernissage.jpg"), filename: 'vernissage.jpg')
event5.save

event6 = Event.new(:name => "Booba en showcase", 
		:adress => "Paris", 
		:theme => "Showcase",
		 :description => "Pour son dernier album Ultra qui va sortir en mars et le succés de son tube RATPI WORLD déja numéro un sur toutes les plateformes,
		  B2OBA fait un showcase à ciel ouvert dans le 92 qui rèpresente le nom de son label 92i.\n
		  Sans doute l'evenement le plus attendu en 2021 face à cette période pandemique.", 
		 :date => "2021-01-15 19:40:00",
		 :user_id => user3.id
		 )
event6.photo.attach(io: File.open("#{Rails.root}/app/assets/images/showcase.jpg"), filename: 'showcase.jpg')
event6.save

event7 = Event.new(:name => "Le secret des algorithmes", 
		:adress => "Gentilly", 
		:theme => "Conférence",
		 :description => "Voilà un mot décrié, que beaucoup pensent comprendre, mais que peu savent manier.\n
		  Il fallait bien une spécialiste du code et des équations pour nous guider à travers ce véritable voyage en terre inconnue de modélisation numérique.\n
		  Plonger dans le virtuel pour comprendre le réel : si la démarche semble paradoxale, c’est pour la chercheuse la méthode unique pour maîtriser notre monde, 
		  aux nombreux enjeux aujourd’hui encore insaisissables. \n
		  Et c’est précisément ce moyen, cette machine algorithmique, qui sépare et relie à la fois ces deux univers, réel et virtuel.", 
		 :date => "2021-01-15 19:40:00",
		 :user_id => user7.id,
		 :visible => true
		 )
event7.photo.attach(io: File.open("#{Rails.root}/app/assets/images/conference.jpg"), filename: 'conference.jpg')
event7.save

event8 = Event.new(:name => "Festival des couleurs", 
		:adress => "Barcelone", 
		:theme => "Festival",
		 :description => "Le Holi Festival, également connu sous le nom de « Festival des couleurs » ou « Love Fest »,
		  est un événement célébré aux quatre coins du monde et donc à Barcelone.\n
		  Cette fête a des origines hindoues, bien qu’elle soit devenue avec le temps une célébration populaire de la couleur et de la joie.", 
		 :date => "2021-01-15 19:40:00",
		 :user_id => user3.id,
		 :visible => true
		 )
event8.photo.attach(io: File.open("#{Rails.root}/app/assets/images/festival.jpg"), filename: 'festival.jpg')
event8.save

event9 = Event.new(:name => "Clasico : Barça Vs Real", 
		:adress => "Barcelone", 
		:theme => "sport",
		 :description => "Venez assistez à la plus grande humiliation du Real Madrid, Messi va faire l'amour à tous les joueurs du real et rentré avec son 7ème Ballon d'or.\n
		 Quant à Pedri et De Jong, ils vont tout simplement s'appropriés le milieu du terrain. Noublions pas aussi que Riqui va rentrer en 2éme partie, et il va faire la misére à Modric l'imposteur", 
		 :date => "2021-01-15 19:40:00",
		 :user_id => user7.id,
		 :visible => true
		 )
event9.photo.attach(io: File.open("#{Rails.root}/app/assets/images/foot.jpg"), filename: 'foot.jpg')
event9.save

event10 = Event.new(:name => "Battle Call Of Duty", 
		:adress => "Paris", 
		:theme => "Jeux vidéo",
		 :description => "Venez défiez Squeezie, le streamer français le plus connu dans un battle royale.\n
		 Bien sûr si vous gagnez vous rentrer avec une PS5, et deux coca cheri.Même si vous perdiez on vous la donne cette cannette de coca.", 
		 :date => "2021-01-15 19:40:00",
		 :user_id => user6.id,
		 :visible => true
		 )
event10.photo.attach(io: File.open("#{Rails.root}/app/assets/images/gaming.jpg"), filename: 'gaming.jpg')
event10.save


#Add EventsUser participe
puts "insertion des participants"
EventsUser.create(event_id: event1.id, user_id: user2.id)
EventsUser.create(event_id: event1.id, user_id: user3.id)
EventsUser.create(event_id: event1.id, user_id: user4.id)
EventsUser.create(event_id: event1.id, user_id: user6.id)

EventsUser.create(event_id: event2.id, user_id: user2.id)
EventsUser.create(event_id: event2.id, user_id: user3.id)
EventsUser.create(event_id: event2.id, user_id: user4.id)
EventsUser.create(event_id: event2.id, user_id: user5.id)
EventsUser.create(event_id: event2.id, user_id: user7.id)

EventsUser.create(event_id: event3.id, user_id: user4.id)
EventsUser.create(event_id: event3.id, user_id: user5.id)
EventsUser.create(event_id: event3.id, user_id: user6.id)

EventsUser.create(event_id: event4.id, user_id: user2.id)
EventsUser.create(event_id: event4.id, user_id: user3.id)
EventsUser.create(event_id: event4.id, user_id: user5.id)
EventsUser.create(event_id: event4.id, user_id: user7.id)

EventsUser.create(event_id: event7.id, user_id: user2.id)
EventsUser.create(event_id: event7.id, user_id: user3.id)
EventsUser.create(event_id: event7.id, user_id: user4.id)
EventsUser.create(event_id: event7.id, user_id: user5.id)
EventsUser.create(event_id: event7.id, user_id: user6.id)
EventsUser.create(event_id: event7.id, user_id: user7.id)

EventsUser.create(event_id: event8.id, user_id: user2.id)
EventsUser.create(event_id: event8.id, user_id: user6.id)

EventsUser.create(event_id: event9.id, user_id: user2.id)

EventsUser.create(event_id: event9.id, user_id: user2.id)
EventsUser.create(event_id: event9.id, user_id: user7.id)
EventsUser.create(event_id: event9.id, user_id: user4.id)

EventsUser.create(event_id: event10.id, user_id: user4.id)
EventsUser.create(event_id: event10.id, user_id: user5.id)
