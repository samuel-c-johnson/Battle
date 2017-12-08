class Player
  attr_reader :name, :hitpoints

  HITPOINTS = 100

  def initialize(name)
    @name = name
    @hitpoints = HITPOINTS
  end

  def attack
    puts "#{@player_1.name} attacked #{@player_2.name}"
  end

  def reduce_hp
    @hitpoints -= 10
  end



end
