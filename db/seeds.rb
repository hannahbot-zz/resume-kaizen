u = User.new(
  name: 'Ron (Reviewer)',
  email: 'ron@example.com',
  password: 'password',
  password_confirmation: 'password')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'reviewer')

u = User.new(
  name: 'Reston (Reviewer) ',
  email: 'reston@example.com',
  password: 'password',
  password_confirmation: 'password')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'reviewer')

u = User.new(
  name: 'Riri (Reviewer)',
  email: 'riri@example.com',
  password: 'password',
  password_confirmation: 'password')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'reviewer')

u = User.new(
  name: 'Sally (submitter)',
  email: 'sally@example.com',
  password: 'password',
  password_confirmation: 'password')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'submitter')

u = User.new(
  name: 'Susan (submitter)',
  email: 'susan@example.com',
  password: 'password',
  password_confirmation: 'password')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'submitter')

u = User.new(
  name: 'Sam (submitter)',
  email: 'sam@example.com',
  password: 'password',
  password_confirmation: 'password')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'submitter')

puts "6 Users created"
