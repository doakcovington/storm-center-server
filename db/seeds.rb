# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

doak = Tutor.create(name: 'Doak', speciality: 'Science', phonenumber: '555-555-5555', email:'doak@email.com')
doak = Tutor.create(name: 'Heidi', speciality: 'Support', phonenumber: '444-444-4444', email:'heidi@email.com')

biology = Event.create(name: 'Biology', description: 'Bio Study Group', date: DateTime.new(2020, 9, 8), location: 'zoom', spaces: 5, time: "3:30", tutor_id:1)
zoom = Event.create(name: 'Zoom 101', description: 'Learn to zoom', date: DateTime.new(2020, 9, 8), location: 'zoom', spaces: 10, time: "2:30", tutor_id:2)