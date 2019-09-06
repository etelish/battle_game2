require 'player'


describe Player do
subject(:dave) { Player.new('Dave') }
subject(:mittens) { Player.new('Mittens') }

describe '#name' do
  it 'returns player name' do
    expect(dave.name).to eq 'Dave'
  end
 end

 describe '#hit_points' do
   it 'returns the hit points' do
     expect(dave.hit_points).to eq described_class::DEFAULT_HP
   end
 end


end
