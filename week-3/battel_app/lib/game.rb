require_relative './player'

class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end
  
  def attack(player)
    player.receive_damage
  end

end