class Game
    attr_reader :first_player, :second_player, :turn

    def initialize(first_player=Player.new, second_player=Player.new)
        @first_player = first_player
        @second_player = second_player
        @players = [@first_player, @second_player]
        @turn = @players[0]
    end

    def attack(attacked_player)
        attacked_player.take_damage
        change_turn
    end

    def change_turn
        @turn == @players[0] ? @turn = @players[1] : @turn = @players[0]
    end
end