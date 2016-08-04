# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


rachel, liz, leah = User.create([
	{name: "rachel", email: "rachel@racheliscool.com" , password:"password", password_confirmation:"password"},
	{name: "liz", email:"liz@getyohoops.com" , password:"password", password_confirmation:"password"},
	{name: "leah", email:"leah@shopplanetblue.com" , password: "password", password_confirmation:"password"}
	])

