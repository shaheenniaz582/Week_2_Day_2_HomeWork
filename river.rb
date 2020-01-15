class River
  attr_accessor :name

  def initialize(input_name)
    @name = input_name
    @fish = []
  end

  def fish_count()
    return @fish.length
  end

  def loose_fish_in_river(fish)
    index = @fish.index(fish)
    @fish.delete(index)
  end

end
