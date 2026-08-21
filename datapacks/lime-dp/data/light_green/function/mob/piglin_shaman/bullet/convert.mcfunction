execute if entity @e[tag=light_green.support_target,tag=light_green.melee,type=piglin,limit=1] run function light_green:mob/piglin_shaman/bullet/to_guard
execute if entity @e[tag=light_green.support_target,tag=light_green.remote,type=piglin,limit=1] run function light_green:mob/piglin_shaman/bullet/to_target

execute on target run tag @s add light_green.target
execute if score @s light_green.main.math matches 40 if entity @n[tag=light_green.target,distance=..50] unless entity @n[tag=light_green.shaman_target,distance=..50] run function light_green:mob/piglin_shaman/bullet/summon {tag:shaman}
execute on target run tag @s remove light_green.target