$execute unless items block ~ ~ ~ container.$(trade) * run return fail
$data modify storage light_green:trade trade set value $(trade)
$scoreboard players set $trade_set light_green.main.math $(trade)
execute if score $trade_set light_green.main.math matches 9.. run return fail
data modify entity @s Offers.Recipes append value {buy:{id:"barrier",count:1b},sell:{id:"barrier",count:1b},rewardExp:0b,maxUses:9999999}
$data modify entity @s Offers.Recipes[$(trade)].buy set from block ~ ~ ~ Items[{Slot:$(trade)b}]
execute store result storage light_green:trade slot int 1 run scoreboard players add $trade_set light_green.main.math 9
function light_green:piglin_trader/generate/trade/buyb with storage light_green:trade