class Game
  def initialize
    @characters = []
    @characters << Character.new("Alice", 5, 2, 90, 10)
    @characters << Character.new("Bob", 5, 2, 50, 50)
    @characters << Character.new("Carol", 5, 2, 10, 90)
  end

  def play
    while play_turn
      puts "----------------------------"
      print_status
      puts "----------------------------"
      #sleep 1
    end
    living_characters[0].name
  end

  def play_turn
    living_characters.permutation(2) do |a, b|
      puts "#{a.name} attacks #{b.name}"

      if a.hits?
        blocked = b.blocks?
        damage = blocked ? a.block_damage : a.damage
        puts "\t#{b.name} blocks" if blocked
        puts "\t#{a.name} inflicts #{damage} points of damage"
        b.take_damage(damage)
        puts "\t#{b.name} has been defeated" if b.dead?
      else
        puts "\t#{a.name} misses"
      end

      if living_characters.size == 1
        puts "Game over, #{a.name} wins"
        return false
      end
    end
    true
  end

  def print_status
    living_characters.each do |player|
      puts "#{player.name}: #{player.hit_points} hit points"
    end
  end

  private

  def living_characters
    @characters.reject(&:dead?)
  end
end