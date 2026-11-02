$setblock ~ ~ ~ minecraft:$(color)_candle[candles=$(candles),lit=$(lit),waterlogged=$(waterlogged)]
$execute if data storage tools:candle_placer placer{mode:"pane"} run setblock ~ ~-1 ~ minecraft:$(color)_stained_glass_pane[waterlogged=$(waterlogged)]
