class Game
    attr_reader :first_player, :second_player, :turn

    def initialize(first_player=Player.new, second_player=Player.new)
        @first_player = first_player
        @second_player = second_player
        @turn = first_player.name
    end

    def attack(attacked_player)
        attacked_player.take_damage
        change_turn
    end

    def change_turn
        turn == first_player.name ? @turn = second_player.name : @turn = first_player.name
    end
end