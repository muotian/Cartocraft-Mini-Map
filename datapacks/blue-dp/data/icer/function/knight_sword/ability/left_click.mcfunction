tag @s add icer.knightsword_attacker
execute as @e[tag=aj.knightsword.root] if score @s aj.id = @p[tag=icer.knightsword_attacker] aj.id run function animated_java:knightsword/animations/knight_sword_left_click/play
tag @s remove icer.knightsword_attacker
#讓與該玩家綁定的aj實體播放左鍵攻擊動畫