


tag @s remove brown_wool.thunder_spirit.terrain_2
tag @a remove brown_wool.thunder_spirit.player
tag @a remove brown_wool.thunder_spirit.player2
stopsound @a * brown_wool:custom.miguel_johnson_good_day_to_die
stopsound @a * brown_wool:custom.alex_productions_elite
scoreboard players reset @a brown_wool.thunder_spirit.playsound
scoreboard players reset @a brown_wool.thunder_spirit.playsound2
bossbar set brown_wool.thunder_spirit players
bossbar set brown_wool.thunder_spirit visible false
bossbar set brown_wool.thunder_spirit2 players
bossbar set brown_wool.thunder_spirit2 visible false
execute unless score @s brown_wool.thunder_spirit.end matches 1.. at @s run function brown_wool:entity/boss/thunder_spirit/terrain0

function brown_wool:entity/boss/thunder_spirit/kill
scoreboard players add @s brown_wool.thunder_spirit.end 1

kill @e[type=marker, tag=brown_wool.thunder_spirit.narrative_marker]

execute if score @s brown_wool.thunder_spirit.end matches 2 run setblock ~0.5 ~ ~-8.5 warped_planks
execute if score @s brown_wool.thunder_spirit.end matches 2 run setblock ~0.5 ~1 ~-8.5 chest[facing=south]{Items:[{id:"brown_wool",Slot:4},{id:"brown_wool",Slot:12},{id:"brown_wool",Slot:14},{id:"brown_wool",Slot:22}]}
execute if score @s brown_wool.thunder_spirit.end matches 2 at @s run summon marker ~ ~ ~ {Tags:["brown_wool.thunder_spirit.end1"]}
execute if score @s brown_wool.thunder_spirit.end matches 2.. run kill @e[type=marker, tag=brown_wool.thunder_spirit2.narrative_marker]
execute if score @s brown_wool.thunder_spirit.end matches 2.. run kill @s




