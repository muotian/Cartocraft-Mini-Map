# 執行者：玄霆祭司
# 執行位置：同上


function brown_wool:entity/boss/xuan_ting_priest/kill
function brown_wool:entity/boss/xuan_ting_priest/summon
execute as @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] run tag @s remove brown_wool.xuan_ting_priest.terrain_2
tag @a remove brown_wool.xuan_ting_priest.player
stopsound @a * brown_wool:custom.jingle_punks_cataclysmic_molten_core
scoreboard players reset @a brown_wool.xuan_ting_priest.playsound
bossbar set brown_wool.xuan_ting_priest players
bossbar set brown_wool.xuan_ting_priest visible false
execute as @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] at @s run function brown_wool:entity/boss/xuan_ting_priest/terrain0
scoreboard players reset @e brown_wool.xuan_ting_priest.kill


