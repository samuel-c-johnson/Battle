

class Game

  attr_reader :attacker, :victim

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @attacker = player_1
    @victim = player_2


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

  def attacker_swap
    if @attacker == player_1
      @attacker = player_2
    else
      @attacker == player_2
      @attacker = player_1
    end
  end

  def victim_swap
    if @victim == player_1
      @victim = player_2
    else
      @victim == player_2
      @victim = player_1
    end
  end
end
