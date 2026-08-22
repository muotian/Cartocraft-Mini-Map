#
scoreboard players remove @s pink.monster.gravity.last_time 1

scoreboard players set $x player_motion.api.launch 0
scoreboard players set $z player_motion.api.launch 0
execute if score @s pink.monster.gravity.last_time matches 80..100 run scoreboard players set $y player_motion.api.launch 500
execute if score @s pink.monster.gravity.last_time matches 60..80 run scoreboard players set $y player_motion.api.launch 8000
execute if score @s pink.monster.gravity.last_time matches 40..60 run scoreboard players set $y player_motion.api.launch 1100
execute if score @s pink.monster.gravity.last_time matches 1..40 run scoreboard players set $y player_motion.api.launch 1300

execute if score @s pink.monster.gravity.last_time matches 1 run scoreboard players set $y player_motion.api.launch -60000

function player_motion:api/launch_xyz


# off
execute if predicate pink:space run scoreboard players add @s pink.monster.gravity.jump.p 1
execute if score @s pink.monster.gravity.jump.p matches 1.. if score @s pink.star.skill1.temp matches ..0 run function pink:monster/gravity/space
scoreboard players operation @s pink.star.skill1.temp = @s pink.monster.gravity.jump.p
scoreboard players set @s pink.monster.gravity.jump.p 0

title @s subtitle {translate:"monster.pink.gravity.space"}
#

#
execute if score @s pink.monster.gravity.last_time matches ..0 run tag @s remove pink.abnormal_gravity



