class Barracks

  GOLD = 1000
  FOOD = 80

  attr_reader :gold, :food

  def initialize
    @gold = GOLD
    @food = FOOD
  end

  def can_train_footman?
    if gold > 135 && food > 2
      true
    else
      false
    end
  end

  def train_footman
    if can_train_footman? == true
      @gold -= 135
      @food -= 2
      footman = Footman.new
    end
  end

end
