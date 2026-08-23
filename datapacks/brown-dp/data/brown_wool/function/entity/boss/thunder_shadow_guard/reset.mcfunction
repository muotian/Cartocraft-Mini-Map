# 執行者：
# 執行位置：同上



function brown_wool:entity/boss/thunder_shadow_guard/kill
function brown_wool:entity/boss/thunder_shadow_guard/summon
execute as @e[type=marker, tag=brown_wool.thunder_shadow_guard.terrain] run tag @s remove brown_wool.thunder_shadow_guard.terrain_2
stopsound @a * brown_wool:custom.fire_and_thunder
scoreboard players reset @a brown_wool.thunder_shadow_guard.playsound
tag @a remove brown_wool.thunder_shadow_guard.player
bossbar set brown_wool.thunder_shadow_guard players
bossbar set brown_wool.thunder_shadow_guard visible false
execute as @e[type=marker, tag=brown_wool.thunder_shadow_guard.terrain] at @s run function brown_wool:entity/boss/thunder_shadow_guard/terrain0
scoreboard players reset @e brown_wool.thunder_shadow_guard.kill




