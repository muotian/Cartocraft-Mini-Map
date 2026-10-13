$setblock ~ ~ ~ minecraft:candle[candles=$(candles),lit=$(lit),waterlogged=$(waterlogged)]
$execute if data storage tools:candle_placer placer{mode:"pane"} run setblock ~ ~-1 ~ minecraft:glass_pane[waterlogged=$(waterlogged)]
