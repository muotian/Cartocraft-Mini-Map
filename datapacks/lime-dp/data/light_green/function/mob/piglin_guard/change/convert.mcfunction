execute if entity @s[tag=light_green.melee] run function light_green:mob/piglin_guard/change/remote/convert

execute if entity @s[tag=light_green.remote] run function light_green:mob/piglin_guard/change/melee/convert

scoreboard players reset @s light_green.hurt_count

tag @s add light_green.change

data modify entity @s drop_chances.offhand set value 0f

execute if entity @s[tag=light_green.melee] run tag @s add light_green.remote

execute if entity @s[tag=light_green.melee] run return run tag @s remove light_green.melee

execute if entity @s[tag=light_green.remote] run tag @s add light_green.melee

execute if entity @s[tag=light_green.remote] run return run tag @s remove light_green.remote