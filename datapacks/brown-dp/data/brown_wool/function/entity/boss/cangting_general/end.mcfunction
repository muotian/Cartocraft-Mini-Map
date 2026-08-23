

scoreboard players add @s brown_wool.cangting_general.end 1




scoreboard players reset @s brown_wool.cangting_general.switch
scoreboard players reset @s brown_wool.cangting_general.cd
scoreboard players reset @s brown_wool.cangting_general.time
scoreboard players reset @s brown_wool.cangting_general.cast
scoreboard players reset @s brown_wool.cangting_general.random
scoreboard players reset @s brown_wool.cangting_general.pg
scoreboard players reset @s brown_wool.cangting_general.pg_cd
scoreboard players reset @s brown_wool.cangting_general.pg2
scoreboard players reset @s brown_wool.cangting_general.pg_random
scoreboard players reset @s brown_wool.cangting_general.skill_cd
scoreboard players reset @s brown_wool.cangting_general.skill_time
scoreboard players reset @s brown_wool.cangting_general.skill
scoreboard players reset @s brown_wool.cangting_general.skill_random
kill @e[type=zombie_horse, tag=brown_wool.cangting_general.horse]
kill @e[type=item_display, tag=brown_wool.cangting_general.cast1.0]
kill @e[type=block_display, tag=brown_wool.cangting_general.cast2.0]
kill @e[type=item_display, tag=brown_wool.cangting_general.cast4.0]
kill @e[type=item_display, tag=brown_wool.cangting_general.cast5.0]
kill @e[type=item_display, tag=brown_wool.cangting_general.skill1.0]
kill @e[type=item_display, tag=brown_wool.cangting_general.skill2.0]
kill @e[type=item_display, tag=brown_wool.cangting_general.skill3.0]
tag @s remove brown_wool.cangting_general.cast
tag @s remove brown_wool.cangting_general.pg
tag @s remove brown_wool.cangting_general.pg0
tag @s remove brown_wool.cangting_general.skill
tag @s remove brown_wool.cangting_general.cast2.1
tag @s remove brown_wool.cangting_general.cast2.2
tag @s remove brown_wool.cangting_general.cast2.3
tag @s remove brown_wool.cangting_general.cast3.5
tag @s remove brown_wool.cangting_general.cast3.4
tag @s remove brown_wool.cangting_general.cast3.1
tag @a remove brown_wool.cangting_general.cast3.2
tag @a remove brown_wool.cangting_general.cast3.3

execute at @e[type=marker, tag=brown_wool.cangting_general.terrain ,limit=1] run tp @s ~ ~-0.5 ~
rotate @s facing ~ ~1 ~-1

execute if score @s brown_wool.cangting_general.end matches 1 run data modify entity @s Invulnerable set value true

stopsound @a * brown_wool:custom.makai_symphony_dragon_castle
scoreboard players reset @a brown_wool.cangting_general.playsound


execute if score @s brown_wool.cangting_general.end matches 20 run tellraw @a[tag=brown_wool.cangting_general.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.cangting_general",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.cangting_general.end1",color:"red"}]
execute if score @s brown_wool.cangting_general.end matches 70 run tellraw @a[tag=brown_wool.cangting_general.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.cangting_general",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.cangting_general.end2",color:"red"}]
execute if score @s brown_wool.cangting_general.end matches 120 run tellraw @a[tag=brown_wool.cangting_general.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.cangting_general",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.cangting_general.end3",color:"red"}]







effect give @s glowing 1 255 true

execute if score @s brown_wool.cangting_general.end matches 160.. run particle dust{color:[0, 0.2, 1],scale:3} ~ ~ ~ 0.6 1.2 0.6 0.1 250
execute if score @s brown_wool.cangting_general.end matches 160.. run tp @s ~ ~-200 ~
execute if score @s brown_wool.cangting_general.end matches 160.. run kill @s




