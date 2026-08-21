execute as @n[tag=light_green.support_target] on target run tag @s add light_green.target
function light_green:mob/piglin_shaman/bullet/summon {tag:target}
execute as @n[tag=light_green.support_target] on target run tag @s remove light_green.target