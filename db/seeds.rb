# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat1 = Category.create!([{ name: 'Parent', description: 'Hello' }])

topic1 = Topic.create!([{ name: 'Is this working' }, { category_id: cat1 }, { user_id: 1 }])

post1 = Post.create!([{ content: 'Hi!' }, { user_id: 1 }, { topic_id: topic1 }])