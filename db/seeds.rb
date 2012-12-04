# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
  User.create!(name: Faker::Name.name, twitter: Faker::Internet.user_name)
end

users = User.all

users.each do |author|
  10.times do
    post = author.posts.create!(title: Faker::Name.title, content: Faker::Lorem.paragraphs)
    10.times do
      post.comments.create!(author: users.sample, content: Faker::Lorem.paragraph)
    end
  end
end
