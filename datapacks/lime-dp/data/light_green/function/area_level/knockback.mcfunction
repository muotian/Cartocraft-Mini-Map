execute if predicate light_green:y run return fail
execute if entity @s[gamemode=!survival,gamemode=!adventure] run return fail

scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 0
scoreboard players set $z player_motion.api.launch -4000

execute at @s facing entity @n[tag=light_green.summon.graud_golem] feet rotated ~ 0 run function player_motion:api/launch_local_xyz