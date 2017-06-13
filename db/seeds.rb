# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Review.destroy_all
Book.destroy_all
User.destroy_all

user1 = User.create!(email: "test@test.com", password: "123456")
user2 = User.create!(email: "test1@test.es", password: "1234567")
user3 = User.create!(email: "test2@test.org", password: "1234568")

Book.create!(title: "A bag of bones", price: 19, author: "Stephen King", user: user1)
Book.create!(title: "Death on the Nile", price: 9, author: "Agatha Christie", user: user2)
Book.create!(title: "Buddhism Meditation", price: 7, author: "Ramiro Calle", user: user3)

Review.create!(content: "He is a great guy...", user: user1)
Review.create!(content: "Horrible choice...", user: user2)
Review.create!(content: "Friendly :)", user: user3)
