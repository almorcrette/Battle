require 'player'

describe Player do

    let(:player) { described_class.new(:player_name) }

    describe '#initialize' do
        
        it 'initializes instant with the name passed as an argument' do
            expect(player.name).to eq :player_name
        end

        it 'initializes instant with hit points set to 100' do
            expect(player.hit_points).to eq 100
        end
    end

    describe '#take_damage' do

        it 'reduces player hit points by 10' do
            expect { player.take_damage }.to change { player.hit_points }.by(-10)
        end
    end
end