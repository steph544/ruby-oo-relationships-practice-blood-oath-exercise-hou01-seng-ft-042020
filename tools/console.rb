require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1=Cult.new(name: "Demon", location: "Houston", founding_year: 1988, slogan: "Devils 24/7", min_age: 10)
c2=Cult.new(name: "John Smith", location: "Oklahoma", founding_year: 1950, slogan: "Follow me", min_age: 6)
c3=Cult.new(name: "Cheney", location: "Conroe", founding_year: 1880, slogan: "Cheneys Rule", min_age: 15)

f1=Follower.new(name:"Mark", age:42, life_motto:"Life is good")
f2=Follower.new(name:"Stephanie", age:38, life_motto:"I don't like to follow people")
f3=Follower.new(name:"Elijah", age:11, life_motto:"I'm a child, I don't know what I'm doing")
f4=Follower.new(name:"Owen", age:10, life_motto:"Food is yummy.")
f5=Follower.new(name:"Jenn", age:4, life_motto:"Okay.")
f6=Follower.new(name:"Sarah", age:1, life_motto:"Huh?")
f7=Follower.new(name:"Bob", age:15, life_motto:"Alrighty then")
f8=Follower.new(name:"Ryan", age:13, life_motto:"Have Fun")
f9=Follower.new(name:"Local", age:18, life_motto:"Who cares")
f10=Follower.new(name:"Boom", age:11, life_motto:"Live your best life")
f11=Follower.new(name:"Brat", age:13, life_motto:"Uh,oh")


b1=Blood_oath.new(cult: c1, follower: f1, initiation_date:"2002-05-28")
b2=Blood_oath.new(cult: c2, follower: f2, initiation_date:"1999-01-23")
b3=Blood_oath.new(cult: c3, follower: f3, initiation_date:"2012-08-03")
b4=Blood_oath.new(cult: c1, follower: f4, initiation_date:"1982-07-23")
b5=Blood_oath.new(cult: c2, follower: f5, initiation_date:"1952-11-03")
b6=Blood_oath.new(cult: c1, follower: f6, initiation_date:"1990-08-02")
b7=Blood_oath.new(cult: c2, follower: f7, initiation_date:"1450-05-03")
b8=Blood_oath.new(cult: c2, follower: f8, initiation_date:"1470-09-27")
b9=Blood_oath.new(cult: c2, follower: f9, initiation_date:"1840-07-21")
b10=Blood_oath.new(cult: c3, follower: f9, initiation_date:"1980-08-24")
b11=Blood_oath.new(cult: c2, follower: f10, initiation_date:"1450-01-03")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits