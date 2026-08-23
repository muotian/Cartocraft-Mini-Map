

scoreboard players add @s brown_wool.thunderous_fiend_rift_fang.end 1





scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.switch
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.cd
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.time
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.cast
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.random
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.pg
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.pg_cd
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.pg2
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.pg_random
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.skill_cd
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.skill_time
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.skill
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.skill_random
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.fire_cd
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.fire_time
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.fire
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.fire_random
kill @e[type=skeleton_horse, tag=brown_wool.thunderous_fiend_rift_fang.horse]
kill @e[tag=brown_wool.thunderous_fiend_rift_fang_1.cast3.0]
kill @e[tag=brown_wool.thunderous_fiend_rift_fang_2.cast3.0]
kill @e[type=block_display, tag=brown_wool.thunderous_fiend_rift_fang_1.cast1.0]
kill @e[type=item_display, tag=brown_wool.thunderous_fiend_rift_fang_1.cast5]
kill @e[type=block_display, tag=brown_wool.thunderous_fiend_rift_fang_2.cast1.0]
kill @e[type=block_display, tag=brown_wool.thunderous_fiend_rift_fang_2.cast2.0]
kill @e[type=blaze, tag=brown_wool.thunderous_fiend_rift_fang_2.cast4.1]
kill @e[type=breeze, tag=brown_wool.thunderous_fiend_rift_fang_2.cast4.2]
kill @e[type=block_display, tag=brown_wool.thunderous_fiend_rift_fang_2.cast5.0]
kill @e[type=block_display, tag=brown_wool.thunderous_fiend_rift_fang_2.fire0.0]
kill @e[type=block_display, tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.00]
kill @e[type=breeze, tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.00]
kill @e[type=interaction, tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.00]
kill @e[type=block_display, tag=brown_wool.thunderous_fiend_rift_fang_2.skill3.0]
tag @s remove brown_wool.thunderous_fiend_rift_fang.cast
tag @s remove brown_wool.thunderous_fiend_rift_fang.pg
tag @s remove brown_wool.thunderous_fiend_rift_fang.pg0
tag @s remove brown_wool.thunderous_fiend_rift_fang.skill
tag @s remove brown_wool.thunderous_fiend_rift_fang.fire


execute at @e[type=marker, tag=brown_wool.thunderous_fiend_rift_fang.terrain ,limit=1] run tp @s ~ ~-0.5 ~
rotate @s facing ~1 ~1 ~

execute if score @s brown_wool.thunderous_fiend_rift_fang.end matches 1 run data modify entity @s Invulnerable set value true

stopsound @a * brown_wool:custom.keys_of_moon_thunder_unison
stopsound @a * brown_wool:custom.makai_symphony_endless_storm
scoreboard players reset @a brown_wool.thunderous_fiend_rift_fang.playsound
scoreboard players reset @a brown_wool.thunderous_fiend_rift_fang.playsound2


execute if score @s brown_wool.thunderous_fiend_rift_fang.end matches 20 run tellraw @a[tag=brown_wool.thunderous_fiend_rift_fang.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.thunderous_fiend_rift_fang",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunderous_fiend_rift_fang.end1",color:"red"}]
execute if score @s brown_wool.thunderous_fiend_rift_fang.end matches 70 run tellraw @a[tag=brown_wool.thunderous_fiend_rift_fang.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.thunderous_fiend_rift_fang",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunderous_fiend_rift_fang.end2",color:"red"}]
execute if score @s brown_wool.thunderous_fiend_rift_fang.end matches 120 run tellraw @a[tag=brown_wool.thunderous_fiend_rift_fang.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.thunderous_fiend_rift_fang",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunderous_fiend_rift_fang.end3",color:"red"}]



execute if score @s brown_wool.thunderous_fiend_rift_fang.end matches 20 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.thunderous_fiend_rift_fang.end matches 60 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.thunderous_fiend_rift_fang.end matches 100 at @s run summon lightning_bolt ~ ~-200 ~



effect give @s glowing 1 255 true



execute if score @s brown_wool.thunderous_fiend_rift_fang.end matches 160.. run particle explosion ~ ~ ~ 5 3 5 0.1 200
execute if score @s brown_wool.thunderous_fiend_rift_fang.end matches 160.. run tp @s ~ ~-200 ~

execute if score @s brown_wool.thunderous_fiend_rift_fang.end matches 160.. run kill @s




