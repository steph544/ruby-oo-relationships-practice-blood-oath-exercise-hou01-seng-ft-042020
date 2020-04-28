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
        names_array=[]
        names_list = blood_oaths_taken.map do |inst| inst.follower end  
            names_list.each do |inst| names_array << inst.name end 
        names_array
    end 

    
    def recruit_follower(follower)
        followers << follower 
    end 

    def cult_population
        followers.count 
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
end 