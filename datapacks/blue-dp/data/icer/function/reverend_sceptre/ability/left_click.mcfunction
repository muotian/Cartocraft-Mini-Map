tag @s add icer.reverend_sceptre_attacker
execute as @e[tag=aj.reverend_sceptre.root] if score @s aj.id = @p[tag=icer.reverend_sceptre_attacker] aj.id run function animated_java:reverend_sceptre/animations/reverend_sceptre_left_click/play
tag @s remove icer.reverend_sceptre_attacker
#讓與玩家綁定的aj實體執行左鍵攻擊動畫

