execute if score @s light_green.boss.animation matches 45 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 4 0
execute if score @s light_green.boss.animation matches 45 run particle explosion ~ ~ ~ 0.4 0.4 0.4 0 10
execute if score @s light_green.boss.animation matches 40 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 4 0.25
execute if score @s light_green.boss.animation matches 40 run particle explosion ~ ~ ~ 0.4 0.4 0.4 0 10
execute if score @s light_green.boss.animation matches 35 run stopsound @a record light_green:fight_music-graud_golem
execute if score @s light_green.boss.animation matches 35 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 4 0.5
execute if score @s light_green.boss.animation matches 35 run particle explosion ~ ~ ~ 0.4 0.4 0.4 0 10
execute if score @s light_green.boss.animation matches 30 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 4 0.75
execute if score @s light_green.boss.animation matches 30 run particle explosion ~ ~ ~ 0.4 0.4 0.4 0 10
execute if score @s light_green.boss.animation matches 25 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 4 1
execute if score @s light_green.boss.animation matches 25 run particle explosion ~ ~ ~ 0.4 0.4 0.4 0 10
execute if score @s light_green.boss.animation matches 20 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 4 1.25
execute if score @s light_green.boss.animation matches 20 run particle explosion ~ ~ ~ 0.4 0.4 0.4 0 10
execute if score @s light_green.boss.animation matches 15 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 4 1.5
execute if score @s light_green.boss.animation matches 15 run particle explosion ~ ~ ~ 0.4 0.4 0.4 0 10
execute if score @s light_green.boss.animation matches 10 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 4 1.75
execute if score @s light_green.boss.animation matches 10 run particle explosion ~ ~ ~ 0.4 0.4 0.4 0 10
execute if score @s light_green.boss.animation matches 5 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 4 2
execute if score @s light_green.boss.animation matches 5 run particle explosion ~ ~ ~ 0.4 0.4 0.4 0 10
execute if score @s light_green.boss.animation matches 0..35 run particle witch ~ ~ ~ 0.4 0.4 0.4 0 20
execute if score @s light_green.boss.animation matches 5 as @e[tag=light_green.boss.graud_golem_leg,type=husk,limit=4] run scoreboard players reset @s light_green.mob.ai
execute if score @s light_green.boss.animation matches 5 as @e[tag=light_green.boss.graud_golem_leg,type=husk,limit=4] run kill @s
execute if score @s light_green.boss.animation matches 5 run function light_green:mob/boss/graud_golem/pillar/clear/1
execute if score @s light_green.boss.animation matches 5 run function light_green:mob/boss/graud_golem/pillar/clear/2
execute if score @s light_green.boss.animation matches 5 run function light_green:mob/boss/graud_golem/pillar/clear/3
execute if score @s light_green.boss.animation matches 5 run function light_green:mob/boss/graud_golem/pillar/clear/4
execute if score @s light_green.boss.animation matches 5 at @s run function light_green:mob/boss/graud_golem/tp_door/summon
execute if score @s light_green.boss.animation matches 5 at @s positioned ~0.5 ~ ~0.5 run function light_green:item/golem_core
execute if score @s light_green.boss.animation matches 5 at @s positioned ~-0.5 ~ ~-0.5 run function light_green:item/golem_core
execute if score @s light_green.boss.animation matches 5 at @s run summon item ~1 ~ ~ {Item:{id:blackstone}}
execute if score @s light_green.boss.animation matches 5 at @s run summon item ~ ~1 ~ {Item:{id:blackstone}}
execute if score @s light_green.boss.animation matches 5 at @s run summon item ~ ~ ~1 {Item:{id:blackstone}}
execute if score @s light_green.boss.animation matches 5 at @s run summon item ~-1 ~ ~ {Item:{id:blackstone}}
execute if score @s light_green.boss.animation matches 5 at @s run summon item ~ ~ ~-2 {Item:{id:blackstone}}
execute if score @s light_green.boss.animation matches 5 at @s run summon item ~ ~ ~-1 {Item:{id:blackstone}}
execute if score @s light_green.boss.animation matches 5 at @s run summon item ~2 ~ ~ {Item:{id:blackstone}}
execute if score @s light_green.boss.animation matches 5 at @s run summon item ~ ~ ~ {Item:{id:blackstone}}
execute if score @s light_green.boss.animation matches 5 at @s run summon item ~ ~ ~2 {Item:{id:blackstone}}
execute if score @s light_green.boss.animation matches 5 at @s run summon item ~-2 ~ ~ {Item:{id:blackstone}}
execute if score @s light_green.boss.animation matches 0 run scoreboard players set $golem_kill light_green.main.math 1
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/graud_golem/kill