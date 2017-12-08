

class Game

  attr_reader 

  def initialize(player_1, player_2)
    @players = [player_1, player_2]

  end

  def damage(player)
    player.reduce_hp
  end

  def attack
    puts "#{player_1.name} attacked #{player_2.name}"
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end
end
