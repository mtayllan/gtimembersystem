namespace :utils do
	desc "Setup Development"
  task setup: :environment do

    puts "Executando o setup para desenvolvimento..."
    puts "APAGANDO BD... #{%x(rake db:drop)}"
    puts "CRIANDO BD... #{%x(rake db:create)}"
    puts %x(rake db:migrate)
    puts %x(rake db:seed)
    puts %x(rake utils:generate_users)
    puts %x(rake utils:generate_transfers)
    puts %x(rake utils:generate_events)
    puts "Setup completado com sucesso!"
  end
	
	
  desc "Gera  usuarios fake"
  task generate_users: :environment do
  	puts 'Gerando usuários fake...'
  	20.times do
  	  
			User.create!(name: Faker::Name.name,
						 email: Faker::Internet.email, 
						 password: "123456", 
						 password_confirmation: "123456",
						 birth_date: Faker::Date.birthday(0,100),
						 address: Faker::Address.street_address,
						 city: Faker::Address.city, 
						 postal_code: Faker::Address.postcode,
						 gender: ['Masculino', 'Feminino'].sample,
						 role: Faker::Job.title,
						 phone: Faker::PhoneNumber.phone_number,
						 photo: File.new(Rails.root.join('public', 'images', 'profiles', "#{Random.rand(9)}.jpg"), 'r'))
		end
		puts 'Usuários fake gerados com sucesso!'
  end
  
  desc "Gera  transferences fake"
  task generate_transfers: :environment do
  	puts 'Gerando transferencias fake...'
  	10.times do
			Transfer.create!(description: Faker::Lorem.paragraph(2),
											 price: Random.rand(10000).to_s,
											 category: [0,1].sample)
		end
		puts 'Transferencias fake gerados com sucesso!'
  end
  
  desc "Gera Eventos Fake"
  task generate_events: :environment do
  	puts 'Gerando Eventos fake...'
  	10.times do
  		e = Event.create!(description: Faker::Lorem.paragraph(3),
											 name: Faker::App.name,
											 date: Faker::Date.between(Date.today, 1.year.from_now))
			[5,6].sample.times do |i|
				u = User.find(i+1) 
				e.participations.create!(user: u)
			end
		end
		puts 'Eventos fake gerados com sucesso!'
  end

end
