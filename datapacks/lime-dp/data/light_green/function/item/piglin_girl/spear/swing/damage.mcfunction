tag @s add light_green.attacker
execute at @s rotated ~ 0 positioned ^ ^ ^0.25 positioned ~ ~0.5 ~ run summon marker ~ ~ ~ {Tags:["light_green.damage_locator"]}
scoreboard players set $piglin_girl_spear.sweep_rotate light_green.main.math 0
execute as @n[tag=light_green.damage_locator] at @s anchored eyes positioned ^ ^ ^ rotated as @p[tag=light_green.attacker] rotated ~-90 0 run function light_green:item/piglin_girl/spear/swing/detect
$data modify storage light_green:weapon damage set from storage light_green:weapon player.$(id).spear_damage
function light_green:item/piglin_girl/spear/swing/math with storage light_green:weapon
execute as @e[tag=light_green.damage_target] run function light_green:mob/boss/piglin_girl/cant_move/apply
execute as @e[tag=light_green.damage_target] run function light_green:item/piglin_girl/victim/from_spear
execute if entity @e[tag=light_green.damage_target,limit=1] if score @s light_green.spear_sprint matches ..16 at @s run summon marker ~ ~ ~ {Tags:["light_green.spear_sprint.marker"]}
execute if entity @e[tag=light_green.damage_target,limit=1] if score @s light_green.spear_sprint matches ..16 at @s run rotate @e[tag=light_green.spear_sprint.marker,limit=1] ~ ~
execute if entity @e[tag=light_green.damage_target,limit=1] if score @s light_green.spear_sprint matches ..16 run tp @s @e[tag=light_green.spear_sprint.marker,limit=1]
execute if entity @e[tag=light_green.damage_target,limit=1] if score @s light_green.spear_sprint matches ..16 run kill @e[tag=light_green.spear_sprint.marker,limit=1]
execute as @e[tag=light_green.damage_target] run tag @s remove light_green.damage_target
tag @s remove light_green.attacker
kill @n[tag=light_green.damage_locator,type=marker]