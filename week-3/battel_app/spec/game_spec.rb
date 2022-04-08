require_relative '../lib/game'

describe Game do
  let(:ruzeka) { double ('player') }
  let(:joe) { double ('player') }
  subject(:game) { Game.new(ruzeka, joe) }
  
  context '#creation' do
    it 'has two players' do
      expect(game.player_1).to eq ruzeka
      expect(game.player_2).to eq joe
    end
  end
  
  it { expect(game).to respond_to(:attack).with(1) }

  context '#attack' do
    it 'damages the player' do
      expect(joe).to receive(:receive_damage)
      game.attack(joe)
    end
  end

end