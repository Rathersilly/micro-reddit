# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
10.times do |i|
  #create post
  post = Post.create!(user: Faker::Name.name,
               title: Faker::Hipster.sentence,
               content: Faker::Hipster.paragraphs(number: 1))
  3.times do |i|
    post.comments.create!(user: "Commenter #{i+1}",
                          content: "this post is ok")
  end

end
