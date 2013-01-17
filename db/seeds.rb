# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Customer.delete_all
Customer.create!(name: "Srujana", address: "8802 Tradewind Dr", city: "San Antonio", state: "TX", zipcode: "78239", user_id: 1)
Customer.create!(name: "John",    address: "8802 Tradewind Dr", city: "San Antonio", state: "TX", zipcode: "78239", user_id: 2)
Customer.create!(name: "Joe",     address: "4350 Dublin Rd",    city: "Dubline",     state: "OH", zipcode: "43210", user_id: 3)

Doctor.delete_all
Doctor.create!(name: "Bob",   address: "5111 Walzem Rd", city: "San Antonio", state: "TX", zipcode: "78218", user_id: 1)
Doctor.create!(name: "Suzan", address: "5111 Walzem Rd", city: "San Antonio", state: "TX", zipcode: "76543", user_id: 2)
Doctor.create!(name: "Admino",address: "5111 Walzem Rd", city: "San Antonio", state: "TX", zipcode: "76123", user_id: 3)

Receptionist.delete_all
Receptionist.create!(name: "Rachel", address: "5111 Walzem Rd", city: "San Antonio", state: "TX", zipcode: "76123", user_id:1)
Receptionist.create!(name: "Rachel", address: "5111 Walzem Rd", city: "San Antonio", state: "TX", zipcode: "76123", user_id:2)
Receptionist.create!(name: "Rachel", address: "5111 Walzem Rd", city: "San Antonio", state: "TX", zipcode: "76123", user_id:3)

Pet.delete_all
Pet.create!(customer_id: 1, petName: "Bunny", petType: "Dog", breed: "pug",    age: 5, weight:4.0, dateApp: "2013-01-18 00:00:00", reason: "over weight")
Pet.create!(customer_id: 2, petName: "snoopy",petType: "Cat", breed: "siamese",age: 4, weight:2.0, dateApp: "2013-02-18 00:00:00", reason: "very less weight")
Pet.create!(customer_id: 3, petName: "Snowy", petType: "Bird",breed: "parrot", age: 3, weight:1.0, dateApp: "2013-03-18 00:00:00", reason: "broken leg")  
Pet.create!(customer_id: 4, petName: "Rocky", petType: "Dog", breed: "bulldog",age: 5, weight:4.0, dateApp: "2013-01-18 00:00:00", reason: "over weight")
Pet.create!(customer_id: 5, petName: "Sia",   petType: "Cat", breed: "Bengal", age: 4, weight:2.0, dateApp: "2013-02-18 00:00:00", reason: "very less weight")
Pet.create!(customer_id: 6, petName: "Sera",  petType: "Bird",breed: "pug",    age: 3, weight:1.0, dateApp: "2013-03-18 00:00:00", reason: "broken leg") 

Appointment.delete_all
Appointment.create!(visitDate: "2013-01-23 00:00:00", customer_id: 1, pet_id: 1, reminder: true, visitReason: "very less weight", doctor_id: 1)
Appointment.create!(visitDate: "2013-01-24 00:00:00", customer_id: 2, pet_id: 2, reminder: true, visitReason: "over weight", doctor_id: 2)
Appointment.create!(visitDate: "2013-01-25 00:00:00", customer_id: 3, pet_id: 3, reminder: true, visitReason: "broken leg", doctor_id: 3)
Appointment.create!(visitDate: "2013-01-23 00:00:00", customer_id: 4, pet_id: 4, reminder: true, visitReason: "very less weight", doctor_id: 1)
Appointment.create!(visitDate: "2013-01-24 00:00:00", customer_id: 5, pet_id: 5, reminder: true, visitReason: "over weight", doctor_id: 2)
Appointment.create!(visitDate: "2013-01-25 00:00:00", customer_id: 6, pet_id: 6, reminder: true, visitReason: "broken leg", doctor_id: 3)


Profile.delete_all
Profile.create!(type: "Customer",    name: "Srujana", address: "8802 Tradewind Dr", city: "San Antonio", state: "TX", zipcode: "78239", user_id: 3)
Profile.create!(type: "Customer",    name: "John",    address: "8802 Tradewind Dr", city: "San Antonio", state: "TX", zipcode: "78239", user_id: 1)
Profile.create!(type: "Customer",    name: "Joe",     address: "4350 Dublin Rd",    city: "Dubline",     state: "OH", zipcode: "43210", user_id: 2)
Profile.create!(type: "Doctor",      name: "Bob",     address: "5111 Walzem Rd",    city: "San Antonio", state: "TX", zipcode: "78218", user_id: 3)
Profile.create!(type: "Doctor",      name: "Suzan",   address: "5111 Walzem Rd",    city: "San Antonio", state: "TX", zipcode: "76543", user_id: 1)
Profile.create!(type: "Doctor",      name: "Admino",  address: "5111 Walzem Rd",    city: "San Antonio", state: "TX", zipcode: "76123", user_id: 2)
Profile.create!(type: "Receptionist",name: "Rachel",  address: "5111 Walzem Rd",    city: "San Antonio", state: "TX", zipcode: "76123", user_id: 3)
Profile.create!(type: "Receptionist",name: "Rachel",  address: "5111 Walzem Rd",    city: "San Antonio", state: "TX", zipcode: "76123", user_id: 2)
Profile.create!(type: "Receptionist",name: "Rachel",  address: "5111 Walzem Rd",    city: "San Antonio", state: "TX", zipcode: "76123", user_id: 3)



