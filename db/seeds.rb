# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.destroy_all
SchoolClass.destroy_all

s1 = Student.create(first_name: 'Steven', last_name: 'Weiss')
s2 = Student.create(first_name: 'Patrick', last_name: 'Abejar')

sc1 = SchoolClass.create(title: 'history', room_number: 101)
sc2 = SchoolClass.create(title: 'law', room_number: 212)

puts 'IT WORKED'
