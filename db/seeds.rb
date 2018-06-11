# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  Student.create(first_name: ["Ron", "Ro", "Dood"].sample,
                last_name: ["Eese", "Ice", "Rood"].sample)
end

10.times do
  SchoolClass.create(title: ['Science', 'Idk', 'MathSux'].sample,
                room_number: [1,2,3,4,5].sample)
end
