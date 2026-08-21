execute if entity @s[tag=light_green.from_player] run return run function light_green:item/golem/mod/adapt/bullet/tick
scoreboard players add @s light_green.main.math 1

execute store result storage light_green:mob id int 1 run scoreboard players get @s light_green.bullet_id

execute at @s[tag=!light_green.bullet.guard] run particle reverse_portal ~ ~ ~ 0 0 0 0.01 1
execute at @s[tag=light_green.bullet.guard] run particle happy_villager ~ ~ ~ 0 0 0 0.01 1

function light_green:mob/piglin_shaman/bullet/tracking with storage light_green:mob

execute if score @s light_green.main.math matches 20.. run function light_green:mob/piglin_shaman/bullet/kill