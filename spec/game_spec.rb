require 'game'

describe Game do
# let(:player) {double(:player, hit_points = 10) }
dave = Player.new('Dave')
  describe '#attack' do
    it 'damages the player' do
      subject.attack(dave)
      expect(dave.hit_points).to eq 90
    end
  end


end
