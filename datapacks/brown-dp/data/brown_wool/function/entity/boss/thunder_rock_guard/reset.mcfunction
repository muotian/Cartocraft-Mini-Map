# 執行者：
# 執行位置：同上


function brown_wool:entity/boss/thunder_rock_guard/kill
function brown_wool:entity/boss/thunder_rock_guard/summon
execute as @e[type=marker, tag=brown_wool.thunder_rock_guard.terrain ] run tag @s remove brown_wool.thunder_rock_guard.terrain_2
tag @a remove brown_wool.thunder_rock_guard.player
stopsound @a * brown_wool:custom.kaiji_dance_with_the_devil
scoreboard players reset @a brown_wool.thunder_rock_guard.playsound
bossbar set brown_wool.thunder_rock_guard players
bossbar set brown_wool.thunder_rock_guard visible false
execute as @e[type=marker, tag=brown_wool.thunder_rock_guard.terrain ,limit=1] at @s run function brown_wool:entity/boss/thunder_rock_guard/terrain0
scoreboard players reset @e brown_wool.thunder_rock_guard.kill

