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

puts "Cadastrando Usuario Padrão"

User.create!(name: "Default" , email: 'u@u.com',
			  password: "123456", password_confirmation: "123456")

puts "Usuário Padrão Cadastrado com sucesso!"

