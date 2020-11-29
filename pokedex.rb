require './pokemon_type'

class Pokedex
  POKEMON_MASTER_DATA = [
    {
      identifier: 1,
      name: 'フシギダネ',
      type: PokemonType.new('くさ'),
    },
    {
      identifier: 2,
      name: 'ヒトカゲ',
      type: PokemonType.new('ほのお'),
    },
    {
      identifier: 3,
      name: 'ゼニガメ',
      type: PokemonType.new('みず'),
    },
    {
      identifier: 4,
      name: 'ピカチュウ',
      type: PokemonType.new('でんき'),
    },
  ]
end
