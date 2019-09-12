# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create test user
# User.create!([
#     { 
#     username: "lawrence",
#     password: "123",
#     usertype: true,
#     bio: Faker::Movies::Ghostbusters.quote 
#     }
# ])

# 10.times do 
#     Paper.create({
#         title: Faker::Hipster.sentence,
#         abstract: Faker::Hipster.paragraph(sentence_count: 3),
#         category: ["Biology", "Physics", "Chemistry"][rand(3)],
#         doi: "10.1016/j.cell.2015.02.015",
#         user_id: 1
#     })
# end 

# 5.times do 
#     Review.create({
#         content: Faker::Hipster.paragraph(sentence_count: 2),
#         paper_id: rand(10)+1,
#         user_id: 1
#     })
# end 

# create bank of researcher type users
# 5.times do 
#     User.create({
#         username: Faker::Name.name,
#         password: "123",
#         usertype: true,
#         bio: Faker::Movies::Ghostbusters.quote
#     })
# end

# assign researchers some papers
5.times do 
    Paper.create({
        title: Faker::Hipster.sentence,
        abstract: Faker::Hipster.paragraph(sentence_count: 3),
        category: ["Biology", "Physics", "Chemistry"][rand(3)],
        doi: "10.1016/j.cell.2015.02.015",
        user_id: rand(6)+2,
        rating: rand(8)
    })
end 

# create some peers
5.times do 
    User.create({
        username: Faker::Name.name,
        password: "123",
        usertype: false,
        bio: Faker::Movies::Ghostbusters.quote
    })
end

# randomly assign users some reviews
20.times do 
    Review.create({
        content: Faker::Hipster.paragraph(sentence_count: 2),
        paper_id: rand(18)+2,
        user_id: rand(18)+2
    })
end 

puts "---- SEEDED ----"