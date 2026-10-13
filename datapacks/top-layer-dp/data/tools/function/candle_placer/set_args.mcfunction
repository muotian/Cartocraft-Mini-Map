data remove storage tools:candle_placer init
execute store success storage tools:candle_placer init byte 1 if score $init tools.candle_placer matches 1 if data storage tools:candle_placer colors[] if data storage tools:candle_placer boolean[]
execute unless data storage tools:candle_placer {init:1b} run function tools:candle_placer/init

data remove storage tools:candle_placer config

$data modify storage tools:candle_placer config.color set value "$(color)"
$data modify storage tools:candle_placer config.min set value $(min)
$data modify storage tools:candle_placer config.max set value $(max)
$data modify storage tools:candle_placer config.lit set value "$(lit)"
$data modify storage tools:candle_placer config.waterlogged set value "$(waterlogged)"
$data modify storage tools:candle_placer config.mode set value "$(mode)"

execute unless function tools:candle_placer/check_args run data modify storage tools:candle_placer config set value {color:"none",min:1,max:1,lit:"true",waterlogged:"false"}
