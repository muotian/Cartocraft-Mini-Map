setblock ~ ~ ~ minecraft:air
$execute unless data storage tools:candle_placer placer{min:$(max)} store result storage tools:candle_placer placer.candles byte 1 run random value $(min)..$(max)
$execute if data storage tools:candle_placer placer{min:$(max)} run data modify storage tools:candle_placer placer.candles set from storage tools:candle_placer placer.min
execute if data storage tools:candle_placer placer{color:"none"} run function tools:candle_placer/place.none with storage tools:candle_placer placer
execute unless data storage tools:candle_placer placer{color:"none"} run function tools:candle_placer/place.color with storage tools:candle_placer placer
