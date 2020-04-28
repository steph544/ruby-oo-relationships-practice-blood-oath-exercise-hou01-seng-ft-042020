class Blood_oath 

    attr_accessor :cult, :follower
    attr_reader :initiation_date 

    @@all = []

    def initialize(cult:, follower:, initiation_date:)
        @cult=cult
        @follower=follower
        @initiation_date= initiation_date 
        @@all << self
    end 

    def self.all
        @@all
    end 

    def self.first_oath
        self.all.min_by do |inst| inst.initiation_date end 
    end 
end 