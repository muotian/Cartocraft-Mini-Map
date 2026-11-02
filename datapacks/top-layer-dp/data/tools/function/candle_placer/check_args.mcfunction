scoreboard players set $invalid tools.candle_placer 0

function tools:candle_placer/check_args.macro with storage tools:candle_placer config

execute if score $invalid tools.candle_placer matches 1 run return fail
return 1
