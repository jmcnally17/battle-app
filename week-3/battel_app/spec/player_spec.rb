require 'player'

describe Player do
  subject(:ruzeka) { Player.new('Ruzeka') }
  subject(:joe) { Player.new('Joe') }

  context '#name' do
    it 'has a name' do
      expect(ruzeka.name).to eq 'Ruzeka'
    end
  end

  context '#hit_points' do
    it 'returns the hit points' do
      expect(ruzeka.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  context '#receive_damage' do
    it 'reduces player hit points by 10' do
      expect { ruzeka.receive_damage }.to change{ ruzeka.hit_points }.by -10
    end
  end

  context '#attack' do
    it 'damages the player' do
      expect(joe).to receive(:receive_damage)
      ruzeka.attack(joe)
    end
  end
end 