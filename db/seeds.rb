require 'faker'

u = User.new(
  name: 'Admin User',
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'admin')

u = User.new(
  name: 'Reviewer',
  email: 'reviwer@example.com',
  password: 'password',
  password_confirmation: 'password')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'reviewer')

u = User.new(
  name: 'Submitter',
  email: 'submitter@example.com',
  password: 'password',
  password_confirmation: 'password')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'submitter')

puts "Users created"
