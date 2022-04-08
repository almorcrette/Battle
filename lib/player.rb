class Player
    
    attr_accessor :hit_points, :name

    def initialize(name="John Doe")
        @name = name
        @hit_points = 100
    end

    def take_damage
        @hit_points -= 10
    end

end