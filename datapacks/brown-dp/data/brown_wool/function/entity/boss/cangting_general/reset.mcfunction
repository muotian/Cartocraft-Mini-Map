# 執行者：
# 執行位置：同上

function brown_wool:entity/boss/cangting_general/kill
function brown_wool:entity/boss/cangting_general/summon
execute as @e[type=marker, tag=brown_wool.cangting_general.terrain ,limit=1] run tag @s remove brown_wool.cangting_general.terrain_2
stopsound @a * brown_wool:custom.makai_symphony_dragon_castle
scoreboard players reset @a brown_wool.cangting_general.playsound
tag @a remove brown_wool.cangting_general.player
tag @a remove brown_wool.cangting_general.cast3.2
tag @a remove brown_wool.cangting_general.cast3.3
bossbar set brown_wool.cangting_general players
bossbar set brown_wool.cangting_general visible false
execute as @e[type=marker, tag=brown_wool.cangting_general.terrain ,limit=1] at @s run function brown_wool:entity/boss/cangting_general/terrain0
scoreboard players reset @e brown_wool.cangting_general.kill





