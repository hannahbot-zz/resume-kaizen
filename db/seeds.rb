require 'faker'

r = Resume.create(
  name: Faker::Lorem.words(rand(1..4)).join(" "),
  group_id: 1,
  user_id: 1
)

r = Resume.create(
  name: Faker::Lorem.words(rand(1..4)).join(" "),
  group_id: 1,
  user_id: 4
)

r = Resume.create(
  name: Faker::Lorem.words(rand(1..4)).join(" "),
  group_id: 2,
  user_id: 3
)

r = Resume.create(
  name: Faker::Lorem.words(rand(1..4)).join(" "),
  group_id: 2,
  user_id: 6
)

r = Resume.create(
  name: Faker::Lorem.words(rand(1..10)).join(" "),
  group_id: 1,
  user_id: 1
)

r = Resume.create(
  name: Faker::Lorem.words(rand(1..10)).join(" "),
  group_id: 1,
  user_id: 4
)

r = Resume.create(
  name: Faker::Lorem.words(rand(1..10)).join(" "),
  group_id: 2,
  user_id: 3
)

r = Resume.create(
  name: Faker::Lorem.words(rand(1..10)).join(" "),
  group_id: 2,
  user_id: 6
)

r = Resume.create(
  name: Faker::Lorem.words(rand(1..10)).join(" "),
  group_id: 1,
  user_id: 1
)

r = Resume.create(
  name: Faker::Lorem.words(rand(1..10)).join(" "),
  group_id: 1,
  user_id: 4
)

r = Resume.create(
  name: Faker::Lorem.words(rand(1..10)).join(" "),
  group_id: 3,
  user_id: 2
)

r = Resume.create(
  name: Faker::Lorem.words(rand(1..10)).join(" "),
  group_id: 3,
  user_id: 5
)

u = User.new(
  name: 'Reviewer 1',
  email: Faker::Internet.email,
  password: 'password',
  password_confirmation: 'password')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'reviewer')

u = User.new(
  name: 'Reviewer 2',
  email: Faker::Internet.email,
  password: 'password',
  password_confirmation: 'password')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'reviewer')

u = User.new(
  name: 'Reviewer 3',
  email: Faker::Internet.email,
  password: 'password',
  password_confirmation: 'password')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'reviewer')

u = User.new(
  name: 'Submitter 1',
  email: Faker::Internet.email,
  password: 'password',
  password_confirmation: 'password')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'submitter')

u = User.new(
  name: 'Submitter 2',
  email: Faker::Internet.email,
  password: 'password',
  password_confirmation: 'password')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'submitter')

u = User.new(
  name: 'Submitter 3',
  email: Faker::Internet.email,
  password: 'password',
  password_confirmation: 'password')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'submitter')

puts "Users created"
