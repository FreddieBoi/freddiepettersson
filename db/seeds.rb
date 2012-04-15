# encoding: UTF-8
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
Page.create!(title: 'Home', content: 'Welcome to <a href="http://freddiepettersson.heroku.com/">freddiepettersson</a>!')
Page.create!(title: 'Contact', content: 'Feel free to contact me, <a href="mailto:freddieboi@gmail.com">Freddie Pettersson</a>.')
Page.create!(title: 'Bio', content: "My name is <strong>Freddie Pettersson</strong> and I'm into coffee, code, liquorice and punkrawk.")

puts 'Create places'
chillbro = Place.create!(title: 'chillbro studios AB', location: 'Linköping, Sweden', website: 'http://chillbro.net/')
liu = Place.create!(title: 'Linköping University', location: 'Linköping, Sweden', website: 'http://www.liu.se/')
sectra = Place.create!(title: 'Sectra', location: 'Linkoping, Sweden', website: 'http://www.sectra.com')
karlsborg = Place.create!(title: 'Karlsborg Municipality Social Service', location: 'Karlsborg, Sweden', website: 'http://www.karlsborg.se')
ledr = Place.create!(title: 'Command and Control Regiment (LedR), Swedish Armed Forces', location: 'Enköping, Sweden', website: 'http://www.forsvarsmakten.se/ledr/')

puts 'Create jobs'
Job.create!(title: 'Co-Owner and Developer', place: chillbro, started_at: DateTime.new(2011, 9), description: 'Owner and developer of a small Android indie games company. Mostly developing for Android, but included in some web projects as well.')
Job.create!(title: 'Teaching Assistant C# and .NET', place: liu, started_at: DateTime.new(2011, 10), ended_at: DateTime.new(2011, 12), description: 'Teaching assistant for students taking a course on programming in C# and .NET, main focus on Visual Studio 2010 usage and frameworks such as WPF.')
Job.create!(title: 'Teaching Assistant C#, XNA and GameMaker', place: liu, started_at: DateTime.new(2011, 8), ended_at: DateTime.new(2011, 10), description: 'Teaching assistant for students taking a course on game design and programming, using C#, XNA and GameMaker.')
Job.create!(title: 'Software Engineer', place: sectra, started_at: DateTime.new(2010, 6), ended_at: DateTime.new(2011, 8), description: 'Agile development of Medical IT software. Developer and Scrum Master of a Scrum Team working mainly with C# and .NET. Worked with everything between User Interfaces and Servers. Focus on Unattented Installations and Automated Test Environments.')
Job.create!(title: 'Personal Assistant', place: karlsborg, started_at: DateTime.new(2008, 7), ended_at: DateTime.new(2009, 8), description: 'Personal Assistant for disabled people, helping them out with healthcare and everyday life.')
Job.create!(title: 'Military Service', place: ledr, started_at: DateTime.new(2006, 7), ended_at: DateTime.new(2007, 6), description: 'Military service for 11 months as Sergeant First Class of Swedish Armed Forces at the Regiment of Command and Control (LedR) in Enköping. Specialization: Radio Communication Systems.')
