
tag @s add light_green.attacker
execute at @s rotated ~ 0 positioned ^ ^ ^0.25 positioned ~ ~0.5 ~ run summon marker ~ ~ ~ {Tags:["light_green.damage_locator"]}
scoreboard players set $piglin_girl_spear.sweep_rotate light_green.main.math 0
execute as @n[tag=light_green.damage_locator] at @s anchored eyes positioned ^ ^ ^ rotated as @p[tag=light_green.attacker] rotated ~-90 0 run function light_green:item/big_hoglin/sword/swing/detect
execute store result score $hit light_green.main.math run execute if entity @e[tag=light_green.damage_target]
execute unless entity @e[tag=light_green.damage_target] run scoreboard players set $hit light_green.main.math 0
$execute as @e[tag=light_green.damage_target] run damage @s $(damage) light_green:hoglin_swing by @p[tag=light_green.attacker]
$scoreboard players set $heal light_green.main.math $(damage)
execute as @e[tag=light_green.damage_target] run tag @s remove light_green.damage_target
scoreboard players add $hit light_green.main.math 1
execute store result score @s light_green.heal run scoreboard players operation $heal light_green.main.math *= $hit light_green.main.math
tag @s remove light_green.attacker
execute as @e[tag=light_green.hoglin_swing.hit] run tag @s remove light_green.hoglin_swing.hit
kill @n[tag=light_green.damage_locator,type=marker]