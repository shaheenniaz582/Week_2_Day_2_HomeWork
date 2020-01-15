class Bear

  attr_reader :name, :type, :empty_stomach

  def initialize(input_name, input_type)
    @name = input_name
    @type = input_type
    @empty_stomach = []
  end

  def empty_stomach_check
    @empty_stomach.length()
  end

  def get_fish_from_river(fish)
    @empty_stomach.push(fish)
  end

  def bear_roar()
    return "Roar"
  end

end
