$data modify entity @s Offers.Recipes[$(trade)].sell set from block ~ ~ ~ Items[{Slot:$(slot)b}]
scoreboard players remove $trade_set light_green.main.math 18
execute store result storage light_green:trade trade int 1 run scoreboard players add $trade_set light_green.main.math 1
function light_green:piglin_trader/generate/trade/buya with storage light_green:trade