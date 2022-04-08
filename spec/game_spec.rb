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
            allow(player).to receive(:take_damage).and_return(player)
            expect(game.attack(player)).to eq player
        end
    end

end