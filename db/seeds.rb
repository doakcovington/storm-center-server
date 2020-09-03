# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

doak = Tutor.create(name: 'Doak', speciality: 'Science', phonenumber: '555-555-5555', email:'doak@email.com')

biology = Event.create(name: 'Biology', description: 'Bio Study Group', date: 9/8/2020, location: 'zoom', spaces: 5, tutor_id:1)