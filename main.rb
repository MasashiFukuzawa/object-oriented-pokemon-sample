require './pokedex'
require './pokemon'
require './pokemon_type'
require './waza'
require './growing_level'
require './trainer'

trainer = Trainer.new('サトシ')
trainer.add(Pokemon.new('フシギダネ', GrowingLevel.new(5), Waza.new))
trainer.add(Pokemon.new('ヒトカゲ', GrowingLevel.new(5), Waza.new))
trainer.add(Pokemon.new('ゼニガメ', GrowingLevel.new(5), Waza.new))
trainer.add(Pokemon.new('ピカチュウ', GrowingLevel.new(5), Waza.new))

p "手持ちのポケモン一覧: #{trainer.pokemons}"
my_pikachu = trainer.select_pokemon('ピカチュウ')
my_pikachu_info = { name: my_pikachu.name, type: my_pikachu.type.main_type, level: my_pikachu.growing_level.level }
puts "手持ちのピカチュウの情報: #{my_pikachu_info}}"

puts "=====バトルがはじまった！====="
10.times do |t|
  r = rand(0..9)
  r % 2 == 0 ? my_pikachu.attack : my_pikachu.guard
end
puts "=====バトルがおわった！====="

p "手持ちのピカチュウのレベル: #{my_pikachu.growing_level.level}"
