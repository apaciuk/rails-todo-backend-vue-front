# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

p "Seeding 20 todos"
20.times do |n|
todos = Todo.create(
    title: Faker::Name.name,
    completed: Faker::Boolean.boolean(true_ratio: 0.4)
 )
end






   