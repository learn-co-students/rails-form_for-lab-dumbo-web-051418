# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

school_class1 = SchoolClass.create(title: "Biology", room_number: 23)
school_class2 = SchoolClass.create(title: "Literature", room_number: 9)

student1 = Student.create(first_name: "Lionel", last_name:"Messi")
student2 = Student.create(first_name: "Cristiano", last_name:"Ronaldo")
