# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all
City.destroy_all
Study.destroy_all
Speciality.destroy_all


5.times do
  City.create(name: Faker::Address.city)
end

spe1 = Speciality.create(name: "dentiste")
spe2 = Speciality.create(name: "généraliste")
spe3 = Speciality.create(name: "cardiologue")
spe4 = Speciality.create(name: "rhumatologue")
spe5 = Speciality.create(name: "ophtalmologue")

100.times do
  Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Number.number(digits: 5).to_s, city: City.all.sample)
  Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
end

300.times do
  Study.create(doctor: Doctor.all.sample, speciality: Speciality.all.sample, duration_in_year: rand(1..3))
end

500.times do 
  Appointment.create(doctor: Doctor.all.sample, patient: Patient.all.sample, date: Faker::Date.between(from: 60.days.ago, to: Date.today), city: City.all.sample)
end
