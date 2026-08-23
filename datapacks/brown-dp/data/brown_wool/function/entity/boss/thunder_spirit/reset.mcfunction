# 執行者：
# 執行位置：同上


function brown_wool:entity/boss/thunder_spirit/kill
function brown_wool:entity/boss/thunder_spirit/summon
execute as @e[type=marker, tag=brown_wool.thunder_spirit.terrain] run tag @s remove brown_wool.thunder_spirit.terrain_2
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
execute as @e[type=marker, tag=brown_wool.thunder_spirit.terrain ,limit=1] at @s run function brown_wool:entity/boss/thunder_spirit/terrain0
scoreboard players reset @e brown_wool.thunder_spirit.kill


