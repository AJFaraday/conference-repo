class Character
  attr_reader :name, :hit_points, :damage

  def initialize(name, hit_points, damage, hit_chance, block_chance)
    @name = name
    @hit_points = hit_points
    @damage = damage
    @hit_chance = hit_chance
    @block_chance = block_chance
  end

  def dead?
    @hit_points <= 0
  end

  def hits?
    roll(@hit_chance)
  end

  def blocks?
    roll(@block_chance)
  end

  def take_damage(amount)
    @hit_points -= amount
  end

  def block_damage
    @block_damage ||= (damage / 2).round
  end

  private

  def roll(threshold)
    rand(100) > threshold
  end
end
