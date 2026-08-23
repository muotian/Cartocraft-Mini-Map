execute if entity @n[type=!#icer:cant_damage,distance=..20] run tp @s ^ ^ ^0.5 facing entity @n[type=!#icer:cant_damage] feet
#讓子彈標記面朝最近的實體並往前移動0.5格

execute unless entity @n[type=!#icer:cant_damage,distance=..20] run kill @s
#若周圍沒有攻擊目標則清除子彈

execute if entity @n[type=!#icer:cant_damage,distance=..1] run function icer:reverend_sceptre/ability/bullet_damage
#若碰掉攻擊目標則造成傷害

execute unless block ~ ~ ~ air run kill @s
#若碰到方塊則清除子彈

particle flame ~ ~ ~ 0 0 0 0.01 1 force
#讓子彈產生粒子特效