scoreboard players add @s light_green.main.math 1

execute store result storage light_green:mob id int 1 run scoreboard players get @s light_green.bullet_id
execute store result storage light_green:mob player_id int 1 run scoreboard players get @s light_green.player_id

execute at @s[tag=!light_green.bullet.buff,tag=!light_green.bullet.attack] run particle reverse_portal ~ ~ ~ 0 0 0 100000 1
execute at @s[tag=light_green.bullet.attack] run particle wax_on ~ ~ ~ 0 0 0 1000000 1
execute at @s[tag=light_green.bullet.buff] run particle happy_villager ~ ~ ~ 0 0 0 100000 1

function light_green:item/golem/mod/adapt/bullet/tracking with storage light_green:mob