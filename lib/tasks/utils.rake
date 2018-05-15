namespace :utils do
  desc "Gera  usuarios fake"
  task generate_user: :environment do
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
  end

end
