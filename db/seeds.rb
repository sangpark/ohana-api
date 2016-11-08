# This file should contain all the record creation needed to seed the database
# with its default values. The data can then be loaded with rake db:seed
# (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Set up test users for the Developer Portal.
Kernel.puts 'Setting up first test user...'
user = User.new name: 'First User',
                email: 'user@example.com',
                password: 'mong01dtest',
                password_confirmation: 'mong01dtest'
user.skip_confirmation!
user.save
user.confirm

Kernel.puts 'Setting up second test user...'
user2 = User.new name: 'Second User',
                 email: 'user2@example.com',
                 password: 'mong01dtest',
                 password_confirmation: 'mong01dtest'
user2.skip_confirmation!
user2.save
user2.confirm

# Set up test users for the Admin Interface.
Kernel.puts 'Setting up first test admin...'
admin = Admin.new name: 'Sang Park',
                  email: 'sang.park@gmail.com',
                  password: 'ohanatest',
                  password_confirmation: 'ohanatest'
admin.skip_confirmation!
admin.super_admin = true
admin.save
admin.confirm

Kernel.puts 'Setting up second test admin...'
admin2 = Admin.new name: 'Ivy Andino',
                   email: 'ivelyse@radical-health.com',
                   password: 'ohanatest',
                   password_confirmation: 'ohanatest'
admin2.skip_confirmation!
admin2.super_admin = true
admin2.save
admin2.confirm

Kernel.puts 'Setting up test super admin...'
admin3 = Admin.new name: 'Michael Krupnick',
                   email: 'mkrupnic@gmail.com',
                   password: 'ohanatest',
                   password_confirmation: 'ohanatest'
admin3.skip_confirmation!
admin3.super_admin = true
admin3.save
admin3.confirm


Kernel.puts 'Setting up test super admin...'
admin4 = Admin.new name: 'Leah Henry',
                   email: 'oh@hileah.com',
                   password: 'ohanatest',
                   password_confirmation: 'ohanatest'
admin4.skip_confirmation!
admin4.super_admin = true
admin4.save
admin4.confirm
