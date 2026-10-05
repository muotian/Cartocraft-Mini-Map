data remove storage tools:candle_placer init
execute store success storage tools:candle_placer init byte 1 if score $init tools.candle_placer matches 1 if data storage tools:candle_placer colors[] if data storage tools:candle_placer boolean[]
execute unless data storage tools:candle_placer {init:1b} run function tools:candle_placer/init

execute unless data storage tools:candle_placer config.color run data modify storage tools:candle_placer config.color set value "none"
execute unless data storage tools:candle_placer config.min run data modify storage tools:candle_placer config.min set value 1
execute unless data storage tools:candle_placer config.max run data modify storage tools:candle_placer config.max set value 1
execute unless data storage tools:candle_placer config.lit run data modify storage tools:candle_placer config.lit set value "true"
execute unless data storage tools:candle_placer config.waterlogged run data modify storage tools:candle_placer config.waterlogged set value "false"

execute unless function tools:candle_placer/check_args run return fail
function tools:candle_placer/give with storage tools:candle_placer config
