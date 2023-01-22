# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

20.times do
  students = Student.new(
    name: Faker::Name.unique.name,
    gender: Faker::Gender.binary_type,
    date_of_birth: Faker::Date.between(from: '1998-01-01', to: '2002-12-31')
  )
  students.save
end