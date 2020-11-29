class PokemonType
  attr_reader :main_type, :sub_type

  def initialize(main_type, sub_type = nil)
    @main_type = main_type
    @sub_type = sub_type
  end
end
