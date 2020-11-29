class Pokemon < Pokedex
  attr_reader :identifier, :name, :type, :growing_level, :waza

  def initialize(name, growing_level, waza)
    @name = name
    @identifier = POKEMON_MASTER_DATA.find { |p| p[:name] == name }[:identifier]
    @type = POKEMON_MASTER_DATA.find { |p| p[:name] == name }[:type]
    @growing_level = growing_level
    @waza = waza
  end

  def attack
    waza.attack(name, growing_level)
  end

  def guard
    waza.guard(name)
  end
end
