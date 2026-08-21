
execute facing entity @n[tag=light_green.boss.big_hoglin.target] feet run rotate @s ~ 0
execute if score @s light_green.boss.animation matches 2..43 run function light_green:mob/boss/big_hoglin/animation/rush_particle/convert
execute if score @s light_green.boss.animation matches 2..43 run function light_green:mob/boss/big_hoglin/rush

execute if score @s light_green.boss.animation matches 35 as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/animations/run2/play
execute if score @s light_green.boss.animation matches 20 as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/animations/run3/play

execute if score @s light_green.boss.animation matches 42 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 35 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.5
execute if score @s light_green.boss.animation matches 32 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 30 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.5

execute if score @s light_green.boss.animation matches 27 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 20 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.5
execute if score @s light_green.boss.animation matches 17 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 15 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.5

execute if score @s light_green.boss.animation matches 12 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 5 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.5
execute if score @s light_green.boss.animation matches 3 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 0 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.5

execute if score @s light_green.boss.animation matches 0..45 if score $hoglin_have_dirt light_green.main.math matches 1 at @s rotated ~180 0 positioned ^ ^ ^3 positioned ~ ~-1 ~ rotated ~ -20 run function light_green:mob/boss/big_hoglin/dirt_armor/drop_dirt/rush_summon {rotate1:15,rotate2:15}

execute if score @s light_green.boss.animation matches 45 run function light_green:mob/boss/big_hoglin/animation/rush_damage/break

execute if score @s light_green.boss.animation matches 40 run function light_green:mob/boss/big_hoglin/animation/rush_damage/break

execute if score @s light_green.boss.animation matches 35 run function light_green:mob/boss/big_hoglin/animation/rush_damage/break

execute if score @s light_green.boss.animation matches 30 run function light_green:mob/boss/big_hoglin/animation/rush_damage/break

execute if score @s light_green.boss.animation matches 25 run function light_green:mob/boss/big_hoglin/animation/rush_damage/break

execute if score @s light_green.boss.animation matches 20 run function light_green:mob/boss/big_hoglin/animation/rush_damage/break

execute if score @s light_green.boss.animation matches 15 run function light_green:mob/boss/big_hoglin/animation/rush_damage/break

execute if score @s light_green.boss.animation matches 10 run function light_green:mob/boss/big_hoglin/animation/rush_damage/break

execute if score @s light_green.boss.animation matches 5 run function light_green:mob/boss/big_hoglin/animation/rush_damage/break

execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/big_hoglin/animation/rush_damage/break

execute if score @s light_green.boss.animation matches 0 run kill @e[tag=light_green.boss.big_hoglin.target]
execute if score @s light_green.boss.animation matches 0 run attribute @s attack_knockback modifier remove light_green:big_hoglin_rush
execute if score @s light_green.boss.animation matches 0 run attribute @s movement_speed modifier remove light_green:big_hoglin_rush
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/big_hoglin/move/detect_attack