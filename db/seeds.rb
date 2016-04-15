# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
Publication.destroy_all
Topic.destroy_all



topic1 = Topic.create({name: 'Medicine'})
topic2 = Topic.create({name: 'Civil Engineering'})
topic3 = Topic.create({name: 'Linguistics'})
topic4 = Topic.create({name: 'Biology'})
topic5 = Topic.create({name: 'Computer Science'})
topic6 = Topic.create({name: 'Chemistry'})
topic7 = Topic.create({name: 'Environmental Engieering'})
topic8 = Topic.create({name: 'Materials Science'})
topic9 = Topic.create({name: 'Math'})
topic10 = Topic.create({name: 'Psychology'})

user = User.create({
	user_name: "Mari", 
	password: "hello",
	password_confirmation: "hello"

	})

user.publications.create({
	title: 'gnomes',
	publication_date: '21-05-1998',
	synopsis: 'places to place your gnomes',
	topic: topic1
})

user2 = User.create({
	user_name: "Cat", 
	password: "meow",
	password_confirmation: "meow"

	})

user2.publications.create({
	title: 'cats gone wild',
	publication_date: '10-02-1991',
	synopsis: 'research on wild cats',
	topic: topic2
})




