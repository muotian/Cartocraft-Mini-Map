tag @s add light_green.agony.apply_master
execute store result storage light_green:boss id int 1 run scoreboard players get @s light_green.player_id
$execute as @e[tag=light_green.agony.by_$(id)] run function light_green:mob/boss/piglin_girl/agony/damage/0 
scoreboard players reset @s light_green.dagger_sprint.decost
tag @s remove light_green.agony.apply_master
tag @s remove light_green.agony.master