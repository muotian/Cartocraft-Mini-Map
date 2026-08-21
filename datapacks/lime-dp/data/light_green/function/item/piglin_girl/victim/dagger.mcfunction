execute on attacker run tag @s add light_green.agony.master

function light_green:mob/boss/piglin_girl/animation/dagger/add_agony
execute at @s run function light_green:item/piglin_girl/victim/agony/0
$tag @s add light_green.agony.by_$(id)
tag @s add light_green.agony.by_player