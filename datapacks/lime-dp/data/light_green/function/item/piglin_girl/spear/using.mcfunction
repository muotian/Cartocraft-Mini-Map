scoreboard players add @s light_green.spear_sprint 1

scoreboard players set $x player_motion.api.launch 0

execute if score @s light_green.spear_sprint matches 2 store result score $Onground light_green.main.math run data get entity @s OnGround

execute if score @s light_green.spear_sprint matches 2 run scoreboard players set $y player_motion.api.launch -0

execute if score @s light_green.spear_sprint matches 2 if score $Onground light_green.main.math matches 0 run scoreboard players set $z player_motion.api.launch 15000

execute if score @s light_green.spear_sprint matches 2 if score $Onground light_green.main.math matches 1 run scoreboard players set $z player_motion.api.launch 50000

execute if score @s light_green.spear_sprint matches 2 if score $Onground light_green.main.math matches 1 run attribute @s gravity modifier remove light_green:golden_spear_sprint

tag @s add light_green.spear_sprint
$data modify storage light_green:weapon damage set from storage light_green:weapon player.$(id).spear_damage
$execute at @s positioned ~-1 ~ ~-1 as @e[dx=1,dz=1,type=!#light_green:no_hp,type=!player,tag=!light_green.player.$(id).spear_hit] run function light_green:item/piglin_girl/spear/sprint_damage with storage light_green:weapon
$execute at @s positioned ~-1 ~ ~-1 as @e[dx=1,dz=1,type=!#light_green:no_hp,type=!player,tag=!light_green.player.$(id).spear_hit] run tag @s add light_green.player.$(id).spear_hit
tag @s remove light_green.spear_sprint

execute if score @s light_green.spear_sprint matches 2 at @s rotated ~ 0 run function player_motion:api/launch_local_xyz

execute if score @s light_green.spear_sprint matches 15.. run attribute @s gravity modifier remove light_green:golden_spear_sprint
execute if score @s light_green.spear_sprint matches 15.. run attribute @s knockback_resistance modifier remove light_green:golden_spear_sprint
$execute if score @s light_green.spear_sprint matches 15.. as @e[tag=light_green.player.$(id).spear_hit] run tag @s remove light_green.player.$(id).spear_hit
execute if score @s light_green.spear_sprint matches 15.. if items entity @s weapon.mainhand golden_spear[custom_data~{light_green.golden_spear:1}] run item modify entity @s weapon.mainhand light_green:upgrade_spear
execute if score @s light_green.spear_sprint matches 15.. run tag @s add light_green.spear.deupgrade
execute if score @s light_green.spear_sprint matches 15.. run scoreboard players reset @s light_green.spear_sprint