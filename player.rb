class Player
  # gold_coins, health points, lives

  def initialize
    @gold_coins = 0
    @health_points = 100
    @lives = 5
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    if @gold_coins % 10 == 0
      level_up
    end
  end

  def gold
    @gold_coins
  end

  def health
    @health_points
  end

  def lives
    @lives
  end

  def do_battle(damage)
    @health_points -= damage
    if @health_points <= 0
      @lives -= 1
      if @lives <= 0
        restart
      end
      @health_points = 100
    end
  end

  def restart
    @gold_coins = 0
    @health_points = 100
    @lives = 5
  end

end


player1 = Player.new


puts "You have #{player1.lives} lives"
10.times do player1.collect_treasure
end
puts "You have #{player1.health} health"
puts "You have #{player1.gold} gold"
puts "You have #{player1.lives} lives"
player1.do_battle(110)
puts "You have #{player1.lives} lives"
puts "You have #{player1.health} health"
