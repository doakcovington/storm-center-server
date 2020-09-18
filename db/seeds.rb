# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

heidi = User.create(name: "Heidi", email: "Heidi@email.com", password: "123")

doak = Tutor.create(name: 'Doak', speciality: 'Science', phonenumber: '555-555-5555', email:'doak@email.com', admin_id: 1)
john = Tutor.create(name: 'John', speciality: 'Math', phonenumber: '444-444-4444', email:'john@email.com', admin_id: 1)

biology = Event.create(name: 'Biology', description: 'Bio Study Group', date: DateTime.new(2020, 9, 8), location: 'zoom', spaces: 5, time: "3:30", tutor_id:1, admin_id: 1, icon_url: "https://www.flaticon.com/svg/static/icons/svg/880/880910.svg")
zoom = Event.create(name: 'Zoom 101', description: 'Learn to zoom', date: DateTime.new(2020, 9, 8), location: 'zoom', spaces: 10, time: "2:30", tutor_id:2,  admin_id: 1, icon_url: "https://www.flaticon.com/svg/static/icons/svg/880/880910.svg")
