# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts  'Cadastrando  Admin Principal'
Admin.create!(name: "Admin" , email: 'admin@admin.com',
			  password: "123456", password_confirmation: "123456")
puts 'Administrador cadastrado com sucesso!'

puts  'Cadastrando  User Principal'
User.create!(name: "user" , email: 'user@user.com',
			  password: "123456", password_confirmation: "123456")
puts 'User cadastrado com sucesso!'
puts "Cadastrando Eventos"

events= ["ECEJ","ENEJ" ,
"Destine","Protagonize"]

events.each do  |event|
	Event.find_or_create_by(name: event)
end

puts "Eventos cadastrados com sucesso"
