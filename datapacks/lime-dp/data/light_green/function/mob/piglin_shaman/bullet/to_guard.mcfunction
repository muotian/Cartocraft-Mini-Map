execute as @n[tag=light_green.support_target] run tag @s add light_green.target
function light_green:mob/piglin_shaman/bullet/summon {tag:guard}
execute as @n[tag=light_green.support_target] run tag @s remove light_green.target