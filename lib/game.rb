

class Game
  def initialize
    @player_1 = player_1
    @player_2 = player_2
  end

  def damage(player)
    player.hitpoints
  end

  def attack
    puts "#{@player_1.name} attacked #{@player_2.name}"
  end
end
