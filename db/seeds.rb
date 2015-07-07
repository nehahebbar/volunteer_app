# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@skill1 = Skill.create(name: "Web Development")
@skill2 = Skill.create(name: "Finance/Accounting")
@skill3 = Skill.create(name: "Marketing/Growth")
@skill4 = Skill.create(name: "Strategy Consulting")
@skill5 = Skill.create(name: "Data Analysis")
@skill6 = Skill.create(name: "Social Media")


@listing = Listing.create(title: "Budgeting Plan", description: "This will help us save $10,000 by saving money and allocating it carefully.", estimated_hours: 15, contact: "ed@gmail.com")
@listing.skills << @skill2
@listing.skills << @skill4

@listing = Listing.create(title: "Earned Income Plan", description: "This project will save us $8,000, allowing us to support 5 projects and sites that allow local families to effectively manage the resources and grow food.", estimated_hours: 35, contact: "tim@gmail.com")
@listing.skills << @skill2
@listing.skills << @skill5

@listing = Listing.create(title: "Social Media Revamp", description: "We would like to rebrand ourselves through social media, to raise awareness and interest.", estimated_hours: 20, contact: "4078583340")
@listing.skills << @skill3
@listing.skills << @skill6

@listing = Listing.create(title: "Website Redesign", description: "We'd like to increase usage by redesigning the website to be more intuitive.", estimated_hours: 40, contact: "4152205845")
@listing.skills << @skill1

@listing = Listing.create(title: "Budgeting Plan", description: "This will help us save $10,000 by saving money and allocating it carefully.", estimated_hours: 15, contact: "ed@gmail.com")
@listing.skills << @skill2
@listing.skills << @skill4

@listing = Listing.create(title: "Earned Income Plan", description: "This project will save us $8,000, allowing us to support 5 projects and sites that allow local families to effectively manage the resources and grow food.", estimated_hours: 35, contact: "tim@gmail.com")
@listing.skills << @skill2
@listing.skills << @skill5

@listing = Listing.create(title: "Social Media Revamp", description: "We would like to rebrand ourselves through social media, to raise awareness and interest.", estimated_hours: 20, contact: "4078583340")
@listing.skills << @skill3
@listing.skills << @skill6

@listing = Listing.create(title: "Website Redesign", description: "We'd like to increase usage by redesigning the website to be more intuitive.", estimated_hours: 40, contact: "4152205845")
@listing.skills << @skill1

@listing = Listing.create(title: "Budgeting Plan", description: "This will help us save $10,000 by saving money and allocating it carefully.", estimated_hours: 15, contact: "ed@gmail.com")
@listing.skills << @skill2
@listing.skills << @skill4

@listing = Listing.create(title: "Earned Income Plan", description: "This project will save us $8,000, allowing us to support 5 projects and sites that allow local families to effectively manage the resources and grow food.", estimated_hours: 35, contact: "tim@gmail.com")
@listing.skills << @skill2
@listing.skills << @skill5

@listing = Listing.create(title: "Social Media Revamp", description: "We would like to rebrand ourselves through social media, to raise awareness and interest.", estimated_hours: 20, contact: "4078583340")
@listing.skills << @skill3
@listing.skills << @skill6

@listing = Listing.create(title: "Website Redesign", description: "We'd like to increase usage by redesigning the website to be more intuitive.", estimated_hours: 40, contact: "4152205845")
@listing.skills << @skill1
