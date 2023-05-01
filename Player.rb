class Player

  def initialize(name)
    @name = name
    @lives_remaining = 3
    @total_lives = 3
  end

  def subtract_life
    if (@lives_remaining > 0)
      @lives_remaining -= 1
    end
  end

  attr_reader :name
  attr_accessor :lives_remaining
  attr_reader :total_lives

end