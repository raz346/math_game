class Player
  attr_reader :name, :points

  def initialize(name)
    @name = name
    @points = 3
  end

  def wrong
    @points -= 1
  end

  def gameover
    @points == 0
  end

end