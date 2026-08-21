$data modify entity @s Offers.Recipes[$(trade)].buyB set from block ~ ~ ~ Items[{Slot:$(slot)b}]
execute store result storage light_green:trade slot int 1 run scoreboard players add $trade_set light_green.main.math 9
function light_green:piglin_trader/generate/trade/sell with storage light_green:trade