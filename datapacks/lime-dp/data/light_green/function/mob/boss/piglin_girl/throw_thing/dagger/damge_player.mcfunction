$tag @p[scores={light_green.player_id=$(id)}] add light_green.attacker
execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=!#light_green:no_hp,tag=!attacker,type=!player] run tag @s add light_green.damage_target
execute if entity @n[tag=light_green.damage_target] run tag @s add light_green.hit
$execute if entity @n[tag=light_green.damage_target] run tag @p[scores={light_green.player_id=$(id)}] add light_green.agony.master
$execute as @e[tag=light_green.damage_target] run damage @s $(damage) light_green:dagger_power_throw by @p[scores={light_green.player_id=$(id)}]
execute as @e[tag=light_green.damage_target] run function light_green:item/piglin_girl/victim/from_dagger
$execute as @e[tag=light_green.damage_target] run tag @s add light_green.agony.by_$(id)
execute as @e[tag=light_green.damage_target] run tag @s add light_green.agony.by_player
execute as @e[tag=light_green.damage_target] run tag @s remove light_green.damage_target
$tag @p[scores={light_green.player_id=$(id)}] remove light_green.attacker
execute if entity @s[tag=light_green.hit] run kill @s