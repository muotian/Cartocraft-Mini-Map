scoreboard players add @s light_green.dagger_sprint 1

scoreboard players set $x player_motion.api.launch 0
execute if score @s light_green.dagger_sprint matches 2 run playsound minecraft:event.mob_effect.raid_omen player @s ~ ~ ~ 3 2
execute if score @s light_green.dagger_sprint matches 2 run function light_green:item/piglin_girl/dagger/shdow with storage light_green:player
$execute if score @s light_green.dagger_sprint matches 2 run summon marker ~ ~ ~ {Tags:["light_green.dagger_marker_$(id)"]}
execute if score @s light_green.dagger_sprint matches 1..4 run scoreboard players set $y player_motion.api.launch -1000
execute if score @s light_green.dagger_sprint matches 5.. run scoreboard players set $y player_motion.api.launch 0

execute if score @s light_green.dagger_sprint matches 1 run scoreboard players set $z player_motion.api.launch 60000
execute if score @s light_green.dagger_sprint matches 2 run scoreboard players set $z player_motion.api.launch 40000
execute if score @s light_green.dagger_sprint matches 3 run scoreboard players set $z player_motion.api.launch 20000
execute if score @s light_green.dagger_sprint matches 4 run scoreboard players set $z player_motion.api.launch 5000

execute if score @s light_green.dagger_sprint matches 4 at @s run summon marker ~ ~ ~ {Tags:["light_green.dagger_marker"]}
execute if score @s light_green.dagger_sprint matches 4 at @s run rotate @e[tag=light_green.dagger_marker,limit=1,type=marker] ~ ~
execute if score @s light_green.dagger_sprint matches 4 run tp @s @e[tag=light_green.dagger_marker,limit=1,type=marker]
execute if score @s light_green.dagger_sprint matches 4 at @s run kill @n[tag=light_green.dagger_marker,limit=1,type=marker]

execute if score @s light_green.dagger_sprint matches 1..4 at @s rotated ~ 0 run function player_motion:api/launch_local_xyz

execute if score @s light_green.dagger_sprint matches 4 run tag @s add light_green.dagger_sprint
execute if score @s light_green.dagger_sprint matches 4 run execute store result storage light_green:weapon damage double 0.01 run attribute @s minecraft:attack_damage get 100
$execute if score @s light_green.dagger_sprint matches 4 as @e[tag=light_green.dagger_marker_$(id),type=marker] at @s run function light_green:item/piglin_girl/dagger/marker with storage light_green:player
execute if score @s light_green.dagger_sprint matches 4 run tag @s remove light_green.dagger_sprint

execute if score @s light_green.dagger_sprint matches 2 at @s rotated ~ 0 run function player_motion:api/launch_local_xyz

execute if score @s light_green.dagger_sprint matches 4.. run attribute @s gravity modifier remove light_green:golden_spear_sprint
execute if score @s light_green.dagger_sprint matches 4.. run attribute @s knockback_resistance modifier remove light_green:golden_spear_sprint
$execute if score @s light_green.dagger_sprint matches 4.. as @e[tag=light_green.player.$(id).dagger_hit] run tag @s remove light_green.player.$(id).dagger_hit
execute if score @s light_green.dagger_sprint matches 4.. run scoreboard players reset @s light_green.dagger_sprint