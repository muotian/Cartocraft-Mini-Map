execute if score @s light_green.boss.animation matches 20 as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run return run function animated_java:big_hoglin/animations/walk3/play
execute if score @s light_green.boss.animation matches 15 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 0 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 0 as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/animations/nothing/play
execute if score @s light_green.boss.animation matches 0 run return run scoreboard players set @s light_green.move_step 0