# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = User.new #user_id = 1

admin.role = 'admin'
admin.email = 'admin@hotmail.com'
admin.password = 'admin123'
admin.password_confirmation = 'admin123'
admin.save!

#usuarios
usuario1 = User.new #user_id = 2
usuario1.role = 'waiter'
usuario1.email = 'usuario1@hotmail.com'
usuario1.password = '12345678'
usuario1.password_confirmation = '12345678'
usuario1.save!

usuario2 = User.new #user_id = 3
usuario2.role = 'chef'
usuario2.email = 'usuario2@hotmail.com'
usuario2.password = '12345678'
usuario2.password_confirmation = '12345678'
usuario2.save!

usuario3 = User.new #user_id = 4
usuario3.role = 'helper'
usuario3.email = 'usuario3@hotmail.com'
usuario3.password = '12345678'
usuario3.password_confirmation = '12345678'
usuario3.save!
usuario4 = User.new #user_id = 5
usuario4.role = 'bartender'
usuario4.email = 'usuario4@hotmail.com'
usuario4.password = '12345678'
usuario4.password_confirmation = '12345678'
usuario4.save!