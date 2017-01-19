class Player

attr_reader :gold_coins, :health_points, :lives,  :score

  def initialize (gold_coins = 0, health_points = 10, lives = 5, score = 0)
    @gold_coins = gold_coins
    @health_points = health_points
    @lives = lives
    @score = score
  end


  def do_battle
    @health_points -= 1
    if health_points == 0
      @lives = lives - 1
      @health_points = 10
    end

    if lives == 0
      restart
    end
  end

  def restart
    @health_points = 10
    @gold_coins = 0
    @lives = 5
    @score = 0
    return self
  end

  def level_up
    @lives = lives + 1
    @score = score - 10
    return self
  end

  def collect_treasure
    puts "Please provide number?"
    treasure = gets.chomp.to_i
    @gold_coins = treasure + gold_coins
    if gold_coins >= 10
      @score = score + 1
      @gold_coins = gold_coins - 1
    else
      result @gold_coins
    end

end
