data modify storage tools:candle_placer placer set from entity @s data

execute if block ~ ~ ~ #minecraft:air run function tools:candle_placer/place with storage tools:candle_placer placer
execute if block ~ ~ ~ #minecraft:candles run function tools:candle_placer/place with storage tools:candle_placer placer

kill @s
