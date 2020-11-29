class Waza
  def initialize
    @level_up_count = 0
  end

  def attack(name, level)
    puts "#{name}はこうげきをくりだした！"
    @level_up_count += 1
    level.level_up(@level_up_count)
  end

  def guard(name)
    puts "#{name}はあいてのこうげきからみをまもった！"
  end
end
