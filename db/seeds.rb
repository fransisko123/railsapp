# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

Level.create(title: "Beginner", description: "This is Beginner Class")
Level.create(title: "Intermediate", description: "This is Intermediate Class")
Level.create(title: "Advanced", description: "This is Advanced Class")

20.times do
  students = Student.new(
    name: Faker::Name.unique.name,
    gender: Faker::Gender.binary_type,
    date_of_birth: Faker::Date.between(from: '1998-01-01', to: '2002-12-31'),
    level_id: Faker::Number.between(from: 1, to: 3)
  )
  students.save
end