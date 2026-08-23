tag @s remove icer.holding_reverend_sceptre
#清除拿取aj物品的標籤

tag @s add icer.remove_reverend_sceptre
execute as @e[tag=aj.reverend_sceptre.root] if score @s aj.id = @p[tag=icer.remove_reverend_sceptre] aj.id run function animated_java:reverend_sceptre/remove/this
tag @s remove icer.remove_reverend_sceptre
#將與玩家綁定的aj實體刪除