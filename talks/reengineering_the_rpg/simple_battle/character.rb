class Character

  attr_accessor :name, :hit_points

  def initialize(name, hit_points, hit_chance, block_chance, damage)
    @name = name
    @hit_points = hit_points
    @hit_chance = hit_chance
    @block_chance = block_chance
    @damage = damage
  end

  def attack(other_character)
    puts "#{name} attacks #{other_character.name}"
    if roll(@hit_chance)
      puts "  The attack hits"
      other_character.be_attacked(@damage)
    else
      puts "  The attack missed"
    end
  end

  def be_attacked(damage)
    if roll(@block_chance)
      puts "  It was blocked, half damage done."
      take_damage(damage / 2)
    else
      take_damage(damage)
    end
  end

  def take_damage(damage)
    @hit_points -= damage
    puts "  -#{damage} hit points"
    puts "  #{name} has been defeated" if dead?
  end

  def dead?
    @hit_points <= 0
  end

  private

  def roll(chance)
    rand(100) < chance
  end

end
