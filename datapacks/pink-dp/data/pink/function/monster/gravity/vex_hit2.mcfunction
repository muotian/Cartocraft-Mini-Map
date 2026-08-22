#
effect give @s slowness 2 2 true
# Gravity
execute if score @s pink.monster.gravity.last_time matches 1.. run return fail

tag @s add pink.abnormal_gravity
scoreboard players set @s pink.monster.gravity.jump 0
scoreboard players set @s pink.monster.gravity.last_time 60

title @s times 5 25 5
title @s title {"translate":"monster.pink.gravity.abnormal_gravity",color:"dark_purple"}
title @s subtitle {translate:"monster.pink.gravity.space"}

scoreboard players reset @s pink.monster.gravity.player_die