$execute unless data storage tools:candle_placer colors[{id:"$(color)"}] store success score $invalid tools.candle_placer run return run tellraw @s {text:"[Candle Placer] No candles are colored \"$(color)\".",color:"red"}
execute if data storage tools:candle_placer config{color:"none"} run data modify storage tools:candle_placer config.candle_id set value "candle"
$execute unless data storage tools:candle_placer config{color:"none"} run data modify storage tools:candle_placer config.candle_id set value "$(color)_candle"
$scoreboard players set $min tools.candle_placer $(min)
execute unless score $min tools.candle_placer matches 1..4 store success score $invalid tools.candle_placer run return run tellraw @s {text:"[Candle Placer] The min count of candles must be 1..4.",color:"red"}
$scoreboard players set $max tools.candle_placer $(max)
execute unless score $max tools.candle_placer matches 1..4 store success score $invalid tools.candle_placer run return run tellraw @s {text:"[Candle Placer] The max count of candles must be 1..4.",color:"red"}
execute if score $min tools.candle_placer > $max tools.candle_placer store success score $invalid tools.candle_placer run return run tellraw @s {text:"[Candle Placer] The min count of candles must not be greater than its max count.",color:"red"}
$execute unless data storage tools:candle_placer boolean[{id:"$(lit)"}] store success score $invalid tools.candle_placer run return run tellraw @s {text:"[Candle Placer] Lit state \"$(lit)\" is either \"true\" or \"false\".",color:"red"}
$execute unless data storage tools:candle_placer boolean[{id:"$(waterlogged)"}] store success score $invalid tools.candle_placer run return run tellraw @s {text:"[Candle Placer] Waterlogged state \"$(waterlogged)\" is either \"true\" or \"false\".",color:"red"}
