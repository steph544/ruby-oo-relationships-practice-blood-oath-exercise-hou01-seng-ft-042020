class Cult 

    attr_accessor :name, :location
    attr_reader :founding_year, :slogan 

    @@all = []

    def initialize(name:, location:, founding_year:, slogan:)
        @name=name 
        @location= location
        @founding_year= founding_year
        @slogan= slogan 
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def blood_oaths_taken
        Blood_oath.all.select do |inst| inst.cult == self 
        end 
    end 

    def followers
     blood_oaths_taken.map do |inst| inst.follower end  
    end

    def followers_names_list 
        names_array=[]
        followers.each do |inst| names_array << inst.name end 
        names_array
    end 

    
    def recruit_follower(follower)
        followers_names_list << follower 
    end 

    def cult_population
        self.followers_names_list.count 
    end 

    def self.find_by_name(name) 
        self.all.select do |inst| inst.name == name 
        end 
    end 

    def self.find_by_location(location)
        self.all.select do |inst| inst.location== location 
        end 
    end 

    def self.find_by_founding_year(year)
        self.all.select do |inst| inst.founding_year == year
        end 
    end 

    def average_age
        total=0
        self.followers.map do |inst| total += inst.age end 
        total/self.cult_population
    end 

    def my_followers_mottos
        followers.each do |inst| puts inst.life_motto end 
    end 

    def self.least_popular
        self.all.min_by do |inst| inst.cult_population end 
    end 
end 