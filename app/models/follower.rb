class Follower  

    attr_accessor :name, :age
    attr_reader :life_motto

    @@all = []

    def initialize(name:, age:, life_motto:)
        @name=name 
        @age= age
        @life_motto= life_motto 
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def bloodoaths_taken
    Blood_oath.all.select do |inst| inst.follower == self end 
    end 

    def cults 
        bloodoaths_taken.map do |inst| inst.cult 
        end 
    end 

    def cult_count 
        cults.count
    end 

    def join_cult(cult)
        cult.recruit_follower(self) 
    end 

    def self.of_a_certain_age(age) 
        self.all.select do|inst| inst.age >= age 
        end
    end 

    def my_cults_slogans
        self.cults.each do |inst| puts inst.slogan end  
    end 

    def self.most_active
        self.all.max_by do |inst| inst.cult_count end 
    end 

    def self.top_ten 
        self.all.max(10) do |inst| inst.cult_count end 
    end 
end 