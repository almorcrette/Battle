require 'game'

describe Game do

    let(:player) { double :player }
    let(:another_player) { double :player }
    let(:game) { described_class.new(player, another_player) }

    describe '#initialize' do
        it 'initalizes instant with first player taken from first arguement' do
            expect(game.first_player).to eq player
        end

        it 'initalizes instant with second player taken from second arguement' do
            expect(game.second_player).to eq another_player
        end

    end

    describe '#attack' do
        it 'attacks the player passed in as an argument' do
            expect(player).to receive(:take_damage)
            game.attack(player)
        end
    end

    describe '#change_turn' do
        it 'switches turn after attack' do
            allow(another_player).to receive(:take_damage)
            game.attack(another_player)
            expect(game.turn).to eq another_player
        end
    end

end