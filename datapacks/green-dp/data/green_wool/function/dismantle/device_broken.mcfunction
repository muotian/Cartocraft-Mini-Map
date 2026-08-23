particle cloud ~ ~2 ~
execute as @n[tag=green_wool.dismantle_1] at @s run function green_wool:dismantle/device_dismantle_1
execute as @n[tag=green_wool.dismantle_2] at @s run function green_wool:dismantle/device_dismantle_2
function green_wool:dismantle/device_boom
scoreboard players reset @s green_wool.mobskill
scoreboard players reset @s green_wool.mobskill2