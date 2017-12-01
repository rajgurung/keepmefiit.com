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

ActiveRecord::Base.transaction do

  p 'Create Admin..'
  admin                       = User.find_or_initialize_by(email: 'admin@keepmefiit.com')
  admin.name                  = 'admin'
  admin.type                  = 'admin'
  admin.password              = 'Pass1234,'
  admin.password_confirmation = 'Pass1234,'
  admin.save!

  p 'Create User1..'
  user1                       = User.find_or_initialize_by(email: 'user1@keepmefiit.com')
  user1.name                  = 'user1'
  user1.type                  = 'user'
  user1.password              = 'Pass1234,'
  user1.password_confirmation = 'Pass1234,'
  user1.save!

  p 'Create User2..'
  user2                       = User.find_or_initialize_by(email: 'user2@keepmefiit.com')
  user2.name                  = 'user2'
  user2.type                  = 'user'
  user2.password              = 'Pass1234,'
  user2.password_confirmation = 'Pass1234,'
  user2.save!

  p 'Create Personal Trainer 1'
  trainer1                       = User.find_or_initialize_by(email: 'personal_trainer_1@keepmefiit.com')
  trainer1.name                  = 'Trainer1'
  trainer1.type                  = 'trainer'
  trainer1.password              = 'Pass1234,'
  trainer1.password_confirmation = 'Pass1234,'
  trainer1.save!

  p 'Create Personal Trainer 2'
  trainer2                       = User.find_or_initialize_by(email: 'personal_trainer_2@keepmefiit.com')
  trainer2.name                  = 'Trainer2'
  trainer2.type                  = 'trainer'
  trainer2.password              = 'Pass1234,'
  trainer2.password_confirmation = 'Pass1234,'
  trainer2.save!

  p 'Create Nutritionist 1'
  nutritionist1                       = User.find_or_initialize_by(email: 'nutritionist_1@keepmefiit.com')
  nutritionist1.name                  = 'Nutritionist1'
  nutritionist1.type                  = 'nutritionist'
  nutritionist1.password              = 'Pass1234,'
  nutritionist1.password_confirmation = 'Pass1234,'
  nutritionist1.save!

  p 'Create Nutritionist 2'
  nutritionist2                       = User.find_or_initialize_by(email: 'nutritionist_2@keepmefiit.com')
  nutritionist2.name                  = 'Nutritionist2'
  nutritionist2.type                  = 'nutritionist'
  nutritionist2.password              = 'Pass1234,'
  nutritionist2.password_confirmation = 'Pass1234,'
  nutritionist2.save!


  p 'Create Admin post..'
  Post.find_or_initialize_by(content: 'Hi, I am bot! Your moderator.', user: admin).save!

  p 'Create User1 posts..'
  Post.find_or_initialize_by(content: 'Taking a break from Gym :D',    user: user1).save!
  Post.find_or_initialize_by(content: 'Going for a quick walk ;)',     user: user1).save!

  p 'Create User2 posts..'
  Post.find_or_initialize_by(content: 'Trekking all the way to SOHO!', user: user2).save!
  Post.find_or_initialize_by(content: 'Yoga class today, yay!!',       user: user2).save!


  p 'Create Items'
  item1 = Item.find_or_create_by!(name: 'Lean Meal Plan',                    price: 20.99, user: nutritionist1)
  item2 = Item.find_or_create_by!(name: 'Bulk Meal Plan',                    price: 35.99, user: nutritionist1)
  item3 = Item.find_or_create_by!(name: 'Lean Bulk Meal Plan',               price: 29.99, user: nutritionist1)
  item4 = Item.find_or_create_by!(name: 'Meal plan for greater than 220lbs', price: 40.99, user: nutritionist2)
  item5 = Item.find_or_create_by!(name: 'Meal Plan for 180lbs to 200lbs',    price: 50.35, user: nutritionist2)


  p 'Order Items'
  Order.new.order_items.build(item: item1, user: user1).save! unless OrderItem.where(item: item1, user: user1).present?
  Order.new.order_items.build(item: item2, user: user1).save! unless OrderItem.where(item: item2, user: user1).present?
  Order.new.order_items.build(item: item3, user: user2).save! unless OrderItem.where(item: item3, user: user2).present?
  Order.new.order_items.build(item: item4, user: user2).save! unless OrderItem.where(item: item4, user: user2).present?
  Order.new.order_items.build(item: item5, user: user2).save! unless OrderItem.where(item: item5, user: user2).present?
end
