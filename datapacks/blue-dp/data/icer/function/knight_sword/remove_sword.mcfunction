tag @s remove icer.holding_knightsword
#移除正在拿取aj物品的標籤

tag @s add icer.remove_knightsword
execute as @e[tag=aj.knightsword.root] if score @s aj.id = @p[tag=icer.remove_knightsword] aj.id run function animated_java:knightsword/remove/this
tag @s remove icer.remove_knightsword
#將與玩家綁定的aj實體刪除