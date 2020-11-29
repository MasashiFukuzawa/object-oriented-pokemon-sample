class GrowingLevel
  attr_reader :level

  MIN_LEVEL = 1
  MAX_LEVEL = 100

  def initialize(level = 1)
    raise 'レベルの初期値が不適切です' if level < MIN_LEVEL && level > MAX_LEVEL
    @level = level
  end

  def level_up(count)
    if meet_level_up_condition?(count)
      @level += 1
      puts "レベルが#{level}にあがった！"
    end
  end

  def meet_level_up_condition?(count)
    count % 3 == 0 && level < MAX_LEVEL
  end
end
