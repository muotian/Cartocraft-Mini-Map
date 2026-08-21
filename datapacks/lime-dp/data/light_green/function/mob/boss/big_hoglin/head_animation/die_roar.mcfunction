execute if score $hoglin_roar light_green.boss.animation matches 85 as @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] run function animated_java:big_hoglin_head/animations/die_roar/play
execute if score $hoglin_roar light_green.boss.animation matches 85 at @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 3 0.5
execute if score $hoglin_roar light_green.boss.animation matches 75 run tag @s add light_green.attacker
execute if score $hoglin_roar light_green.boss.animation matches 75 at @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] positioned ~-7.5 ~-4 ~-7.5 as @e[dx=14,dy=10.5,dz=14,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.target
execute if score $hoglin_roar light_green.boss.animation matches 75 as @e[tag=light_green.target] run damage @s 2.5 light_green:rush by @n[tag=light_green.boss.big_hoglin]
execute if score $hoglin_roar light_green.boss.animation matches 75 as @e[tag=light_green.target] run tag @s remove light_green.target
execute if score $hoglin_roar light_green.boss.animation matches 75 run tag @s remove light_green.attacker
execute if score $hoglin_roar light_green.boss.animation matches 70 run tag @s add light_green.attacker
execute if score $hoglin_roar light_green.boss.animation matches 70 at @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] positioned ~-7.5 ~-4 ~-7.5 as @e[dx=14,dy=10.5,dz=14,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.target
execute if score $hoglin_roar light_green.boss.animation matches 70 as @e[tag=light_green.target] run damage @s 2.5 light_green:rush by @n[tag=light_green.boss.big_hoglin]
execute if score $hoglin_roar light_green.boss.animation matches 70 as @e[tag=light_green.target] run tag @s remove light_green.target
execute if score $hoglin_roar light_green.boss.animation matches 70 run tag @s remove light_green.attacker
execute if score $hoglin_roar light_green.boss.animation matches 65 run tag @s add light_green.attacker
execute if score $hoglin_roar light_green.boss.animation matches 65 at @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] positioned ~-7.5 ~-4 ~-7.5 as @e[dx=14,dy=10.5,dz=14,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.target
execute if score $hoglin_roar light_green.boss.animation matches 65 as @e[tag=light_green.target] run damage @s 2.5 light_green:rush by @n[tag=light_green.boss.big_hoglin]
execute if score $hoglin_roar light_green.boss.animation matches 65 as @e[tag=light_green.target] run tag @s remove light_green.target
execute if score $hoglin_roar light_green.boss.animation matches 65 run tag @s remove light_green.attacker