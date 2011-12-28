# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'Create a default user'
AdminUser.create!(email: 'freddieboi@gmail.com', password: 'password', password_confirmation: 'password')

puts 'Create default pages'
Page.create!(id: 1, title: 'Home', content: 'Welcome to <a href="http://freddiepettersson.heroku.com/">freddiepettersson</a>!')
Page.create!(id: 2, title: 'Contact', content: 'Feel free to contact me, <a href="mailto:freddieboi@gmail.com">Freddie Pettersson</a>.')
Page.create!(id: 3, title: 'Bio', content: "My name is <strong>Freddie Pettersson</strong> and I'm into coffee, code, liquorice and punkrawk.")
