class Trainer
  attr_reader :name, :pokemons
  def initialize(name)
    @name = name
    @pokemons = []
  end

  def add(pokemon)
    @pokemons << pokemon
  end

  def select_pokemon(pokemon_name)
    pokemons.find { |p| p.name == pokemon_name }
  end
end
