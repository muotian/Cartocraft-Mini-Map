

scoreboard players add @s brown_wool.thunder_rock_guard.end 1





scoreboard players reset @s brown_wool.thunder_rock_guard.switch
scoreboard players reset @s brown_wool.thunder_rock_guard.cd
scoreboard players reset @s brown_wool.thunder_rock_guard.time
scoreboard players reset @s brown_wool.thunder_rock_guard.cast
scoreboard players reset @s brown_wool.thunder_rock_guard.random
scoreboard players reset @s brown_wool.thunder_rock_guard.pg
scoreboard players reset @s brown_wool.thunder_rock_guard.pg_cd
scoreboard players reset @s brown_wool.thunder_rock_guard.pg2
scoreboard players reset @s brown_wool.thunder_rock_guard.pg_random
scoreboard players reset @s brown_wool.thunder_rock_guard.skill_cd
scoreboard players reset @s brown_wool.thunder_rock_guard.skill_time
scoreboard players reset @s brown_wool.thunder_rock_guard.skill
scoreboard players reset @s brown_wool.thunder_rock_guard.skill_random
kill @e[tag=brown_wool.thunder_rock_guard.cast1.0]
kill @e[type=block_display, tag=brown_wool.thunder_rock_guard.cast2.0]
kill @e[type=block_display, tag=brown_wool.thunder_rock_guard.cast3.0]
kill @e[type=block_display, tag=brown_wool.thunder_rock_guard.cast4.0]
kill @e[type=block_display, tag=brown_wool.thunder_rock_guard.cast5.0]
kill @e[type=block_display, tag=brown_wool.thunder_rock_guard.skill1.0]
kill @e[type=block_display, tag=brown_wool.thunder_rock_guard.skill2.0]
tag @s remove brown_wool.thunder_rock_guard.cast
tag @s remove brown_wool.thunder_rock_guard.pg
tag @s remove brown_wool.thunder_rock_guard.pg0
tag @s remove brown_wool.thunder_rock_guard.skill
tag @s remove brown_wool.thunder_rock_guard.skill3
stopsound @a * brown_wool:custom.kaiji_dance_with_the_devil
scoreboard players reset @a brown_wool.thunder_rock_guard.playsound

execute at @e[type=marker, tag=brown_wool.thunder_rock_guard.terrain ,limit=1] run tp @s ~ ~-0.5 ~
rotate @s facing ~ ~1 ~-1

execute if score @s brown_wool.thunder_rock_guard.end matches 1 run data modify entity @s Invulnerable set value true



execute if score @s brown_wool.thunder_rock_guard.end matches 20 run tellraw @a[tag=brown_wool.thunder_rock_guard.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.thunder_rock_guard",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_rock_guard.end1",color:"red"}]
execute if score @s brown_wool.thunder_rock_guard.end matches 70 run tellraw @a[tag=brown_wool.thunder_rock_guard.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.thunder_rock_guard",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_rock_guard.end2",color:"red"}]
execute if score @s brown_wool.thunder_rock_guard.end matches 120 run tellraw @a[tag=brown_wool.thunder_rock_guard.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.thunder_rock_guard",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_rock_guard.end3",color:"red"}]



execute if score @s brown_wool.thunder_rock_guard.end matches 70 at @e[type=marker, tag=brown_wool.thunder_rock_guard.terrain ,limit=1] run setblock ~ ~-1 ~ barrier
execute if score @s brown_wool.thunder_rock_guard.end matches 70 at @e[type=marker, tag=brown_wool.thunder_rock_guard.terrain ,limit=1] run setblock ~ ~-1 ~1 barrier
execute if score @s brown_wool.thunder_rock_guard.end matches 70 at @e[type=marker, tag=brown_wool.thunder_rock_guard.terrain ,limit=1] run setblock ~ ~-1 ~-1 barrier
execute if score @s brown_wool.thunder_rock_guard.end matches 70 at @e[type=marker, tag=brown_wool.thunder_rock_guard.terrain ,limit=1] run setblock ~1 ~-1 ~ barrier
execute if score @s brown_wool.thunder_rock_guard.end matches 70 at @e[type=marker, tag=brown_wool.thunder_rock_guard.terrain ,limit=1] run setblock ~-1 ~-1 ~ barrier
execute if score @s brown_wool.thunder_rock_guard.end matches 70 at @e[type=marker, tag=brown_wool.thunder_rock_guard.terrain ,limit=1] run setblock ~1 ~-1 ~1 barrier
execute if score @s brown_wool.thunder_rock_guard.end matches 70 at @e[type=marker, tag=brown_wool.thunder_rock_guard.terrain ,limit=1] run setblock ~1 ~-1 ~-1 barrier
execute if score @s brown_wool.thunder_rock_guard.end matches 70 at @e[type=marker, tag=brown_wool.thunder_rock_guard.terrain ,limit=1] run setblock ~-1 ~-1 ~1 barrier
execute if score @s brown_wool.thunder_rock_guard.end matches 70 at @e[type=marker, tag=brown_wool.thunder_rock_guard.terrain ,limit=1] run setblock ~-1 ~-1 ~-1 barrier


execute if score @s brown_wool.thunder_rock_guard.end matches 70..75 run tp @s ~ ~-0.2 ~

execute if score @s brown_wool.thunder_rock_guard.end matches 75.. run tp @s ~ ~-0.02 ~



effect give @s glowing 1 255 true



execute if score @s brown_wool.thunder_rock_guard.end matches 120.. run kill @s




