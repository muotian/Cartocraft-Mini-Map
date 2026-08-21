execute if score $hoglin_attack light_green.boss.animation matches 12 at @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] run playsound minecraft:entity.hoglin.attack hostile @a ~ ~ ~ 3 0.65
execute if score $hoglin_attack light_green.boss.animation matches 10 run tag @s add light_green.attacker
execute if score $hoglin_attack light_green.boss.animation matches 10 at @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] positioned ~-2.5 ~-2.5 ~-2.5 as @e[dx=4,dy=4,dz=4,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.target
execute if score $hoglin_attack light_green.boss.animation matches 10 as @e[tag=light_green.target] run damage @s 5 mob_attack by @n[tag=light_green.boss.big_hoglin]
execute if score $hoglin_attack light_green.boss.animation matches 10 as @e[tag=light_green.target] run tag @s remove light_green.target
execute if score $hoglin_attack light_green.boss.animation matches 10 run tag @s remove light_green.attacker
execute if score $hoglin_attack light_green.boss.animation matches 1 run function light_green:random {math1:1,math2:20}
execute if score $hoglin_attack light_green.boss.animation matches 1 if score $random light_green.main.math matches 1..7 run function light_green:mob/boss/big_hoglin/skill/body_attack
execute if score $hoglin_attack light_green.boss.animation matches 1 as @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] run function animated_java:big_hoglin_head/animations/nothing/play