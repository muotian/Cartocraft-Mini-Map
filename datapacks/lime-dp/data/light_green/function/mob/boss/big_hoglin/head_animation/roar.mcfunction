execute if score $hoglin_roar light_green.boss.animation matches 35 at @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 3 0.5
execute if score $hoglin_roar light_green.boss.animation matches 25 run tag @s add light_green.attacker
execute if score $hoglin_roar light_green.boss.animation matches 25 at @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] positioned ~-7.5 ~-4 ~-7.5 as @e[dx=14,dy=10.5,dz=14,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.target
execute if score $hoglin_roar light_green.boss.animation matches 25 as @e[tag=light_green.target] run damage @s 2.5 light_green:rush by @n[tag=light_green.boss.big_hoglin]
execute if score $hoglin_roar light_green.boss.animation matches 25 as @e[tag=light_green.target] run tag @s remove light_green.target
execute if score $hoglin_roar light_green.boss.animation matches 25 run tag @s remove light_green.attacker
execute if score $hoglin_roar light_green.boss.animation matches 20 run tag @s add light_green.attacker
execute if score $hoglin_roar light_green.boss.animation matches 20 at @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] positioned ~-7.5 ~-4 ~-7.5 as @e[dx=14,dy=10.5,dz=14,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.target
execute if score $hoglin_roar light_green.boss.animation matches 20 as @e[tag=light_green.target] run damage @s 2.5 light_green:rush by @n[tag=light_green.boss.big_hoglin]
execute if score $hoglin_roar light_green.boss.animation matches 20 as @e[tag=light_green.target] run tag @s remove light_green.target
execute if score $hoglin_roar light_green.boss.animation matches 20 run tag @s remove light_green.attacker
execute if score $hoglin_roar light_green.boss.animation matches 15 run tag @s add light_green.attacker
execute if score $hoglin_roar light_green.boss.animation matches 15 at @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] positioned ~-7.5 ~-4 ~-7.5 as @e[dx=14,dy=10.5,dz=14,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.target
execute if score $hoglin_roar light_green.boss.animation matches 15 as @e[tag=light_green.target] run damage @s 2.5 light_green:rush by @n[tag=light_green.boss.big_hoglin]
execute if score $hoglin_roar light_green.boss.animation matches 15 as @e[tag=light_green.target] run tag @s remove light_green.target
execute if score $hoglin_roar light_green.boss.animation matches 15 run tag @s remove light_green.attacker
execute if score $hoglin_roar light_green.boss.animation matches 1 run function light_green:mob/boss/big_hoglin/skill/small_rush
execute if score $hoglin_roar light_green.boss.animation matches 1 as @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] run function animated_java:big_hoglin_head/animations/nothing/play