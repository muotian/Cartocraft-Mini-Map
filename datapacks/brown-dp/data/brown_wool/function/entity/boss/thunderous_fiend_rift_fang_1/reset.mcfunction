# 執行者：
# 執行位置：同上


function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/kill
function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/summon
execute as @e[type=marker, tag=brown_wool.thunderous_fiend_rift_fang.terrain] run tag @s remove brown_wool.thunderous_fiend_rift_fang.terrain_2
tag @a remove brown_wool.thunderous_fiend_rift_fang.player
tag @a remove brown_wool.thunderous_fiend_rift_fang.player2
tag @a remove brown_wool.thunderous_fiend_rift_fang_2.skill1.0
stopsound @a * brown_wool:custom.keys_of_moon_thunder_unison
stopsound @a * brown_wool:custom.makai_symphony_endless_storm
scoreboard players reset @a brown_wool.thunderous_fiend_rift_fang.playsound
scoreboard players reset @a brown_wool.thunderous_fiend_rift_fang.playsound2
bossbar set brown_wool.thunderous_fiend_rift_fang_1 players
bossbar set brown_wool.thunderous_fiend_rift_fang_1 visible false
bossbar set brown_wool.thunderous_fiend_rift_fang_2 players
bossbar set brown_wool.thunderous_fiend_rift_fang_2 visible false
execute as @e[type=marker, tag=brown_wool.thunderous_fiend_rift_fang.terrain ,limit=1] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/terrain0
scoreboard players reset @e brown_wool.thunderous_fiend_rift_fang.kill


