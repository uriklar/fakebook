# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([
	{ 
		first_name: "Uri",
	  last_name: "Klar",
	  about: "Lives in Eilat. Married to Efrat. Father to Maayan and Luna the dog :)",
	  profile_pic_url: "https://scontent.xx.fbcdn.net/v/t1.0-1/c3.0.50.50/p50x50/249432_10150205787699568_551454_n.jpg?oh=1cefb9ce200cb75426ca286d1f0a04d9&oe=5A093F84"
	}
])