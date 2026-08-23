tag @s remove icer.holding_scourge_staff
#移除正在拿取aj物品的標籤

tag @s add icer.remove_scourge_staff
execute as @e[tag=aj.scourge_staff.root] if score @s aj.id = @p[tag=icer.remove_scourge_staff] aj.id run function animated_java:scourge_staff/remove/this
tag @s remove icer.remove_scourge_staff
#將與玩家綁定的aj實體刪除