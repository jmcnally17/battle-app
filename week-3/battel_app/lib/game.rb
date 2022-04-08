require_relative 'player'

class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2, player_class_1 = Player, player_class_2 = Player)
    @player_1 = player_class_1.new(player_1)
    @player_2 = player_class_2.new(player_2)
  end
  
  def attack(player)
    player.receive_damage
  end

end