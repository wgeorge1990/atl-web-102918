# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Tag.destroy_all
Post.destroy_all
PostTag.destroy_all

brit = User.create(name: "Brit", username: "kingcons", password: "cookies")
garry = User.create(name: "Garry", username: "knicksfan1", password: "lolhacks")

t1 = Tag.create(name: 'programming')
t2 = Tag.create(name: 'poetry')
t3 = Tag.create(name: 'lisp')
t4 = Tag.create(name: 'ruby')
t5 = Tag.create(name: 'jazz')

p1 = Post.create(user_id: brit.id,
                 title: "Intro to Auth",
                 published_at: 3.days.ago,
                 content: "I'm starting to like Rails but supporting login is crazy! I'm sure it'll make sense in a day or two.")
p2 = Post.create(user_id: brit.id,
                 title: "Milosz is great",
                 published_at: 2.weeks.ago,
                 content: "Not to be a god or a hero, just a tree, grow for ages, not hurt anyone.")
p3 = Post.create(user_id: brit.id,
                 title: "Kamasi Washington",
                 published_at: 1.week.ago,
                 content: "Norma and I saw him at Buckhead Theater. Absolutely unbelievable. If you have the chance, go see him play!")

PostTag.create(post_id: p1.id, tag_id: t1.id)
PostTag.create(post_id: p1.id, tag_id: t4.id)
PostTag.create(post_id: p2.id, tag_id: t2.id)
PostTag.create(post_id: p3.id, tag_id: t5.id)
