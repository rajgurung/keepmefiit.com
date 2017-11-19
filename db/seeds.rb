# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User Type
# :user, [can have many level boost up]
# :personal_trainer, :nutritionist,
# :admin, :moderator


p 'Create Admin..'
admin = User.find_or_initialize_by(email: 'admin@keepmefiit.com')
admin.name = 'admin'
admin.password = 'Pass1234,'
admin.password_confirmation = 'Pass1234,'
admin.save!

p 'Create User1..'
user1 = User.find_or_initialize_by(email: 'user1@keepmefiit.com')
user1.name = 'user1'
user1.password = 'Pass1234,'
user1.password_confirmation = 'Pass1234,'
user1.save!

p 'Create User2..'
user2 = User.find_or_initialize_by(email: 'user2@keepmefiit.com')
user2.name = 'user2'
user2.password = 'Pass1234,'
user2.password_confirmation = 'Pass1234,'
user2.save!

p 'Create Personal Trainer 1'
trainer1 = User.find_or_initialize_by(email: 'personal_trainer_1@keepmefiit.com')
trainer1.name = 'Trainer1'
trainer1.password = 'Pass1234,'
trainer1.password_confirmation = 'Pass1234,'
trainer1.save!

p 'Create Personal Trainer 2'
trainer2 = User.find_or_initialize_by(email: 'personal_trainer_2@keepmefiit.com')
trainer2.name = 'Trainer2'
trainer2.password = 'Pass1234,'
trainer2.password_confirmation = 'Pass1234,'
trainer2.save!

p 'Create Personal Trainer 1'
pt1 = User.find_or_initialize_by(email: 'personal_trainer_1@keepmefiit.com')
pt1.name = 'pt1'
pt1.password = 'Pass1234,'
pt1.password_confirmation = 'Pass1234,'
pt1.save!




p 'Create Admin post..'
Post.find_or_initialize_by(content: 'Hi, I am bot! Your moderator.', user: admin).save!

p 'Create User1 posts..'
Post.find_or_initialize_by(content: 'Taking a break from Gym :D', user: user1).save!
Post.find_or_initialize_by(content: 'Going for a quick walk ;)', user: user1).save!

p 'Create User2 posts..'
Post.find_or_initialize_by(content: 'Trekking all the way to SOHO!', user: user2).save!
Post.find_or_initialize_by(content: 'Yoga class today, yay!!', user: user2).save!
