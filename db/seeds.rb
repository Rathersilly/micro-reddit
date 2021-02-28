# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
10.times do |i|
  name = Faker::Name.first_name
  user = User.create!(name: name,
                      email: "#{name}#{i}@example.com")
end

users = User.all
10.times do |i|
  user = users.sample

  #create post
  post = Post.create!(user: user,
               title: Faker::Hipster.sentence,
               content: Faker::Hipster.paragraphs(number: 1)[0])
  3.times do |i|
    
    user = users.sample
     
    adjectives = [Faker::Adjective.positive, Faker::Adjective.negative, Faker::Hacker.adjective]

    comment = post.comments.create!(user: user,
                                    content: "this post is #{adjectives.sample}")
    2.times do |j|
      user = users.sample
      post.comments.create!(user: user,
                                content: "this comment is #{adjectives.sample}",
                                parent: comment)
    end
  end

end
