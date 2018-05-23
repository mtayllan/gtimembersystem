namespace :utils do
	desc "Setup Development"
  task setup: :environment do

    puts "Executando o setup para desenvolvimento..."
    puts "APAGANDO BD... #{%x(rake db:drop)}"
    puts "CRIANDO BD... #{%x(rake db:create)}"
    puts %x(rake db:migrate)
    puts %x(rake db:seed)
    puts %x(rake utils:generate_user)
    puts %x(rake utils:generate_cash_flows)
    puts "Setup completado com sucesso!"
  end
	
	
  desc "Gera  usuarios fake"
  task generate_user: :environment do
  	puts 'Gerando usuários fake...'
  	10.times do
			User.create!(name: Faker::Name.name,
						 email: Faker::Internet.email, 
						 password: "123456", 
						 password_confirmation: "123456",
						 birth_date: Faker::Date.birthday(0,100),
						 address: Faker::Address.street_address,
						 city: Faker::Address.city, 
						 postal_code: Faker::Address.postcode, 
						 phone: Faker::PhoneNumber.phone_number)
		end
		puts 'Usuários fake gerados com sucesso!'
  end
  
  desc "Gera  transferences fake"
  task generate_cash_flows: :environment do
  	puts 'Gerando transferencias fake...'
  	50.times do
			Transfer.create!(description: Faker::Lorem.paragraph(2),
											 price: Random.rand(10000).to_s,
											 category: [0,1].sample)
		end
		puts 'Usuários fake gerados com sucesso!'
  end

end
