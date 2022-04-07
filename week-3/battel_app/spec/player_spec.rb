require 'player'

describe Player do
  subject(:ruzeka) {Player.new('Ruzeka')}

  it 'has a name' do
    expect(ruzeka.name).to eq 'Ruzeka'
  end
end 