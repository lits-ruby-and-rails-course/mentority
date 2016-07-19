# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_admin = User.create(password:'12345678',email:'admin@examle.com',first_name:'Ivan',last_name:'Ivanenko')
user_admin.admin!
