require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1=Cult.new(name: "Demon", location: "Houston", founding_year: 1988, slogan: "Devils 24/7")
c2=Cult.new(name: "John Smith", location: "Oklahoma", founding_year: 1950, slogan: "Follow me")
c3=Cult.new(name: "Cheney", location: "Conroe", founding_year: 1880, slogan: "Cheneys Rule")

f1=Follower.new(name:"Mark", age:42, life_motto:"Life is good")
f2=Follower.new(name:"Stephanie", age:38, life_motto:"I don't like to follow people")
f3=Follower.new(name:"Elijah", age:11, life_motto:"I'm a child, I don't know what I'm doing")
f4=Follower.new(name:"Owen", age:42, life_motto:"Food is yummy.")

b1=Blood_oath.new(cult: c1, follower: f1, initiation_date:"2002-05-28")
b2=Blood_oath.new(cult: c2, follower: f2, initiation_date:"1999-01-23")
b3=Blood_oath.new(cult: c3, follower: f2, initiation_date:"2012-08-03")
b4=Blood_oath.new(cult: c1, follower: f4, initiation_date:"1982-07-23")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits