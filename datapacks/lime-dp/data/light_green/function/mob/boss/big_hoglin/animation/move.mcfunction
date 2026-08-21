execute if score @s light_green.move_step matches 3 run return run function light_green:mob/boss/big_hoglin/animation/moveend with storage mob:data
execute if score @s light_green.boss.animation matches 15 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 35 if score @s light_green.move_step matches 2 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 20 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.5
execute if score @s light_green.boss.animation matches 40 if score @s light_green.move_step matches 2 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.5
execute if score @s light_green.move_step matches 1 unless score @s light_green.boss.animation matches 1.. as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/animations/walk1/play
execute if score @s light_green.move_step matches 1 if score @s light_green.boss.animation matches 1 as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/animations/walk2/play
execute if score @s light_green.move_step matches 1 if score @s light_green.boss.animation matches 1 run scoreboard players set @s light_green.move_step 2
execute unless score @s light_green.boss.animation matches 1.. run scoreboard players set @s light_green.boss.animation 41