# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
  Teacher.create([{ name: 'Mason'}, { email: '123@abc.com'}, { password_digest: '123'}])
  Student.create([{ name: 'Anthony'}, {email: '456@xyz.com'}, { password_digest: '000'}])
  Grade.create([{ assignment_name: 'Battleship'}, { date: Date.today}, {student_id: 1}, { grade: 'B'}])
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
