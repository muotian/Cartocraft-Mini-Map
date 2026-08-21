
execute facing entity @n[tag=light_green.boss.big_hoglin.target] feet run rotate @s ~ 0

function light_green:mob/boss/big_hoglin/animation/rush_particle/convert


execute if score @s light_green.boss.animation matches 55..70 run function light_green:mob/boss/big_hoglin/rush
execute if score @s light_green.boss.animation matches 20..55 run function light_green:mob/boss/big_hoglin/die_rush
execute if score @s light_green.boss.animation matches 2..20 run function light_green:mob/boss/big_hoglin/rush

execute if score @s light_green.boss.animation matches 55 as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/animations/die_run2/play
execute if score @s light_green.boss.animation matches 20 as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/animations/die_run3/play

execute if score @s light_green.boss.animation matches 60 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 53 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625

execute if score @s light_green.boss.animation matches 50 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 45 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625

execute if score @s light_green.boss.animation matches 40 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 35 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625

execute if score @s light_green.boss.animation matches 30 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 25 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625

execute if score @s light_green.boss.animation matches 20 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 15 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625

execute if score @s light_green.boss.animation matches 10 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 0 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625



execute if score @s light_green.boss.animation matches 67 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break
execute if score @s light_green.boss.animation matches 64 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break
execute if score @s light_green.boss.animation matches 61 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break
execute if score @s light_green.boss.animation matches 58 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break
execute if score @s light_green.boss.animation matches 55 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break

execute if score @s light_green.boss.animation matches 52 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break
execute if score @s light_green.boss.animation matches 49 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break
execute if score @s light_green.boss.animation matches 46 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break
execute if score @s light_green.boss.animation matches 43 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break
execute if score @s light_green.boss.animation matches 40 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break

execute if score @s light_green.boss.animation matches 37 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break
execute if score @s light_green.boss.animation matches 34 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break
execute if score @s light_green.boss.animation matches 31 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break
execute if score @s light_green.boss.animation matches 28 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break
execute if score @s light_green.boss.animation matches 25 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break

execute if score @s light_green.boss.animation matches 22 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break
execute if score @s light_green.boss.animation matches 19 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break
execute if score @s light_green.boss.animation matches 16 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break
execute if score @s light_green.boss.animation matches 13 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break
execute if score @s light_green.boss.animation matches 10 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break

execute if score @s light_green.boss.animation matches 7 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break
execute if score @s light_green.boss.animation matches 4 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break
execute if score @s light_green.boss.animation matches 1 run function light_green:mob/boss/big_hoglin/animation/rush_damage/die_break

execute if score $hoglin_rush light_green.main.math matches 6.. if entity @n[tag=light_green.boss.big_hoglin.target,distance=..5] run function light_green:mob/boss/big_hoglin/skill/die_rush_stop

execute if score @s light_green.boss.animation matches 0 run kill @e[tag=light_green.boss.big_hoglin.target]
execute if score @s light_green.boss.animation matches 0 as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/animations/die_nothing/play
execute if score @s light_green.boss.animation matches 0 run scoreboard players set @s light_green.mob.ai 26
execute if score @s light_green.boss.animation matches 0 run scoreboard players reset @s light_green.boss.attack_type