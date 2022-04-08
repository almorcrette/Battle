class Game
    attr_reader :first_player, :second_player

    def initialize(first_player=Player.new, second_player=Player.new)
        @first_player = first_player
        @second_player = second_player
    end

    def attack(attacked_player)
        attacked_player.take_damage
    end
end