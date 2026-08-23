tag @s add icer.scourge_staff_attacker
execute as @e[tag=aj.scourge_staff.root] if score @s aj.id = @p[tag=icer.scourge_staff_attacker] aj.id run function animated_java:scourge_staff/animations/scourge_staff_left_click/play
tag @s remove icer.scourge_staff_attacker
#讓與玩家綁定的aj實體執行左鍵攻擊動畫