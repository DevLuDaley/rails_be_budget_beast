# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Account.create([
	{ name: "Daley", available_credit: 49000, balance: 1000, total_credit: 50000, apr: 18 },
	# { name: "Chase", available_credit: (total_credit - balance), balance: 1000, total_credit: 100000, apr: 18 },
	{ name: "Chase", available_credit: 49000, balance: 1000, total_credit: 100000, apr: 25 },
	{ name: "Capital One", available_credit: 40000, balance: 10, total_credit: 50000, apr: 23 },
	{ name: "Barclays", available_credit: 35000, balance: 10, total_credit: 50000, apr: 17.21 }


  ])