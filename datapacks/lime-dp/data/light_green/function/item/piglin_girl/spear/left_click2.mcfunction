data modify storage light_green:weapon rotate set from entity @s Rotation[0]
execute store result storage light_green:weapon id int 1 run scoreboard players get @s light_green.player_id
execute at @s positioned ~ ~1 ~ run function light_green:item/piglin_girl/spear/swing/0 with storage light_green:weapon
function light_green:item/piglin_girl/spear/swing/damage with storage light_green:weapon
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 2 0
attribute @s gravity modifier remove light_green:golden_spear_sprint
attribute @s knockback_resistance modifier remove light_green:golden_spear_sprint
$execute as @e[tag=light_green.player.$(id).spear_hit] run tag @s remove light_green.player.$(id).spear_hit
tag @s add light_green.spear.deupgrade
scoreboard players reset @s light_green.spear_sprint