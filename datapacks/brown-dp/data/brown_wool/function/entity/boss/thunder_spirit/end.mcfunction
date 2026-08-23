

scoreboard players add @s brown_wool.thunder_spirit.end 1





scoreboard players reset @s brown_wool.thunder_spirit.switch
scoreboard players reset @s brown_wool.thunder_spirit.cd
scoreboard players reset @s brown_wool.thunder_spirit.time
scoreboard players reset @s brown_wool.thunder_spirit.cast
scoreboard players reset @s brown_wool.thunder_spirit.random
scoreboard players reset @s brown_wool.thunder_spirit.pg
scoreboard players reset @s brown_wool.thunder_spirit.pg_cd
scoreboard players reset @s brown_wool.thunder_spirit.pg2
scoreboard players reset @s brown_wool.thunder_spirit.pg_random
scoreboard players reset @s brown_wool.thunder_spirit.skill_cd
scoreboard players reset @s brown_wool.thunder_spirit.skill_time
scoreboard players reset @s brown_wool.thunder_spirit.skill
scoreboard players reset @s brown_wool.thunder_spirit.skill_random
kill @e[tag=brown_wool.thunder_spirit.biological0]
kill @e[type=block_display,tag=brown_wool.thunder_spirit.call0]
kill @e[type=block_display, tag=brown_wool.thunder_spirit.attack0]
kill @e[type=block_display, tag=brown_wool.thunder_spirit.pg0]
kill @e[type=block_display, tag=brown_wool.thunder_spirit.cast1.0]
kill @e[type=block_display, tag=brown_wool.thunder_spirit.cast2.0]
kill @e[type=block_display, tag=brown_wool.thunder_spirit.cast3.0]
kill @e[type=block_display, tag=brown_wool.thunder_spirit.skill1.0]
kill @e[type=block_display, tag=brown_wool.thunder_spirit.skill2.0]
kill @e[type=block_display, tag=brown_wool.thunder_spirit.skill3.0]
kill @e[type=item_display, tag=brown_wool.thunder_spirit.skill3.0]
kill @e[type=marker, tag=brown_wool.thunder_spirit.narrative_marker]
tag @s remove brown_wool.thunder_spirit.cast
tag @s remove brown_wool.thunder_spirit.pg
tag @s remove brown_wool.thunder_spirit.pg0
tag @s remove brown_wool.thunder_spirit.skill

stopsound @a * brown_wool:custom.miguel_johnson_good_day_to_die
stopsound @a * brown_wool:custom.alex_productions_elite
scoreboard players reset @a brown_wool.thunder_spirit.playsound
scoreboard players reset @a brown_wool.thunder_spirit.playsound2



execute if score @s brown_wool.thunder_spirit.end matches 20 run tellraw @a[tag=brown_wool.thunder_spirit.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.thunder_spirit",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_spirit.end1",color:"red"}]
execute if score @s brown_wool.thunder_spirit.end matches 70 run tellraw @a[tag=brown_wool.thunder_spirit.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.thunder_spirit",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_spirit.end2",color:"red"}]
execute if score @s brown_wool.thunder_spirit.end matches 120 run tellraw @a[tag=brown_wool.thunder_spirit.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.thunder_spirit",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_spirit.end3",color:"red"}]



execute if score @s brown_wool.thunder_spirit.end matches 20 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.thunder_spirit.end matches 60 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.thunder_spirit.end matches 100 at @s run summon lightning_bolt ~ ~-200 ~



effect give @s glowing 1 255 true

execute if score @s brown_wool.thunder_spirit.end matches 160.. run tag @n[tag=brown_wool.thunder_spirit.terrain] add brown_wool.thunder_spirit.end


execute if score @s brown_wool.thunder_spirit.end matches 160.. run particle explosion ~ ~ ~ 5 3 5 0.1 300

execute if score @s brown_wool.thunder_spirit.end matches 160.. run kill @e[type=vex, tag=brown_wool.thunder_spirit2]
execute if score @s brown_wool.thunder_spirit.end matches 160.. run kill @e[type=allay,tag=brown_wool.thunder_spirit0]




