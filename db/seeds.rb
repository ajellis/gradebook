# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  Teacher.create!(name: "Mason", email: "mason@email.com", password: "123")
  Student.create!(name: "Anthony", email: "anthony@email.com", password: "123", teacher_id: 1)
  Grade.create!(assignment_name: "Battleship", date: Date.today, student_id: 1, grade: "B")
