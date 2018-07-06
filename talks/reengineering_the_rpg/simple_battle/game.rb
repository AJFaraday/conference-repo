class Game

  def initialize
    @alice = Character.new('Alice', 5, 75, 50, 2)
    @bob = Character.new('Bob', 5, 75, 50, 2)
  end

  def turn
    @alice.attack(@bob)
    @bob.attack(@alice)
    report_status
    #sleep 1
  end

  def over?
    (@alice.dead? or @bob.dead?)
  end

  def report_status
    puts ''
    if over?
      puts "The game is over!"
    else
      puts "Alice: #{@alice.hit_points} - Bob: #{@bob.hit_points}"
      puts ''
    end
  end

end
