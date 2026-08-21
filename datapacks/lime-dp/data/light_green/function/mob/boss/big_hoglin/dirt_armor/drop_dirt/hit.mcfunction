execute at @s unless entity @n[type=!#light_green:no_hp,tag=!light_green.boss.big_hoglin,dx=0,distance=..30] run return fail
execute at @s as @e[type=!#light_green:no_hp,tag=!light_green.boss.big_hoglin,dx=0,distance=..30] run damage @s 3 mob_attack by @s from @e[tag=light_green.boss.big_hoglin,limit=1,type=ravager]
execute at @s as @e[type=!#light_green:no_hp,tag=!light_green.boss.big_hoglin,dx=0,distance=..30] run function light_green:mob/boss/big_hoglin/dirt_armor/drop_dirt/hit_victim
kill @s