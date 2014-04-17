require 'faker'

u = User.new(
  name: 'Reviewer 1',
  email: 'reviwer@example.com',
  password: 'password',
  password_confirmation: 'password')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'reviewer')

u = User.new(
  name: 'Reviewer 2',
  email: 'reviwer@example.com',
  password: 'password',
  password_confirmation: 'password')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'reviewer')

u = User.new(
  name: 'Reviewer 3',
  email: 'reviwer@example.com',
  password: 'password',
  password_confirmation: 'password')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'reviewer')

u = User.new(
  name: 'Submitter 1',
  email: 'submitter@example.com',
  password: 'password',
  password_confirmation: 'password')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'submitter')

u = User.new(
  name: 'Submitter 2',
  email: 'submitter@example.com',
  password: 'password',
  password_confirmation: 'password')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'submitter')

u = User.new(
  name: 'Submitter 3',
  email: 'submitter@example.com',
  password: 'password',
  password_confirmation: 'password')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'submitter')

puts "Users created"
