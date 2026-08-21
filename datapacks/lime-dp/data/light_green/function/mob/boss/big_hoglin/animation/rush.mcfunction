execute at @s run tp @n[tag=light_green.boss.big_hoglin.target] ~ ~ ~
execute on target run tag @s add light_green.target
execute as @n[tag=light_green.boss.big_hoglin.target] at @s anchored eyes facing entity @n[tag=light_green.target] feet positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^45 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~
tag @n[tag=light_green.target] remove light_green.target

execute rotated as @n[tag=light_green.boss.big_hoglin.target] run rotate @s ~ 20

execute if score @s light_green.boss.animation matches 110..130 run function light_green:mob/boss/big_hoglin/goback
execute if score @s light_green.boss.animation matches ..90 run function light_green:mob/boss/big_hoglin/animation/rush_particle/convert
execute if score @s light_green.boss.animation matches ..90 run function light_green:mob/boss/big_hoglin/rush

execute if score @s light_green.boss.animation matches 90 as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/animations/run1/play
execute if score @s light_green.boss.animation matches 75 as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/animations/run2/play
execute if score @s light_green.boss.animation matches 15 as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/animations/run3/play

execute if score @s light_green.boss.animation matches 113 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.5
execute if score @s light_green.boss.animation matches 110 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 105 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.5
execute if score @s light_green.boss.animation matches 102 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625

execute if score @s light_green.boss.animation matches 105 at @s run playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 3 0

execute if score @s light_green.boss.animation matches 87 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 85 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.5
execute if score @s light_green.boss.animation matches 82 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 80 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.5

execute if score @s light_green.boss.animation matches 72 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 65 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.5
execute if score @s light_green.boss.animation matches 62 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 60 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.5

execute if score @s light_green.boss.animation matches 57 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 50 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.5
execute if score @s light_green.boss.animation matches 47 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.625
execute if score @s light_green.boss.animation matches 45 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 2 0.5

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

execute if score @s light_green.boss.animation matches 0..85 if score $hoglin_have_dirt light_green.main.math matches 1 at @s rotated as @n[tag=light_green.boss.big_hoglin.target] rotated ~180 ~ positioned ^ ^ ^3 positioned ~ ~-1 ~ rotated ~ -20 run function light_green:mob/boss/big_hoglin/dirt_armor/drop_dirt/rush_summon {rotate1:15,rotate2:15}


execute if score @s light_green.boss.animation matches 85 run function light_green:mob/boss/big_hoglin/animation/rush_damage/unbreak

execute if score @s light_green.boss.animation matches 80 run function light_green:mob/boss/big_hoglin/animation/rush_damage/unbreak

execute if score @s light_green.boss.animation matches 75 run function light_green:mob/boss/big_hoglin/animation/rush_damage/unbreak
execute if score @s light_green.boss.animation matches 75 run function light_green:mob/boss/big_hoglin/dirt_armor/apply

execute if score @s light_green.boss.animation matches 70 run function light_green:mob/boss/big_hoglin/animation/rush_damage/unbreak

execute if score @s light_green.boss.animation matches 65 run function light_green:mob/boss/big_hoglin/animation/rush_damage/unbreak

execute if score @s light_green.boss.animation matches 60 run function light_green:mob/boss/big_hoglin/animation/rush_damage/unbreak

execute if score @s light_green.boss.animation matches 55 run function light_green:mob/boss/big_hoglin/animation/rush_damage/unbreak

execute if score @s light_green.boss.animation matches 50 run function light_green:mob/boss/big_hoglin/animation/rush_damage/unbreak

execute if score @s light_green.boss.animation matches 45 run function light_green:mob/boss/big_hoglin/animation/rush_damage/unbreak

execute if score @s light_green.boss.animation matches 40 run function light_green:mob/boss/big_hoglin/animation/rush_damage/unbreak

execute if score @s light_green.boss.animation matches 35 run function light_green:mob/boss/big_hoglin/animation/rush_damage/unbreak

execute if score @s light_green.boss.animation matches 30 run function light_green:mob/boss/big_hoglin/animation/rush_damage/unbreak

execute if score @s light_green.boss.animation matches 25 run function light_green:mob/boss/big_hoglin/animation/rush_damage/unbreak

execute if score @s light_green.boss.animation matches 20 run function light_green:mob/boss/big_hoglin/animation/rush_damage/unbreak

execute if score @s light_green.boss.animation matches 15 run function light_green:mob/boss/big_hoglin/animation/rush_damage/unbreak

execute if score @s light_green.boss.animation matches 10 run function light_green:mob/boss/big_hoglin/animation/rush_damage/unbreak

execute if score @s light_green.boss.animation matches 5 run function light_green:mob/boss/big_hoglin/animation/rush_damage/unbreak

execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/big_hoglin/animation/rush_damage/unbreak
execute store result score $hoglin_stun light_green.main.math run data get entity @s StunTick

execute if score $hoglin_stun light_green.main.math matches 1.. run scoreboard players set @s light_green.boss.animation 0



execute if score @s light_green.boss.animation matches 0 run kill @e[tag=light_green.boss.big_hoglin.target]
execute if score @s light_green.boss.animation matches 0 run attribute @s attack_knockback modifier remove light_green:big_hoglin_rush
execute if score @s light_green.boss.animation matches 0 run attribute @s movement_speed modifier remove light_green:big_hoglin_rush
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/big_hoglin/move/detect_attack