tag @s add light_green.use_axe
schedule function light_green:player/advancement/axe/reback/0 1t
advancement revoke @s only light_green:use_axe
execute if score @s light_green.crack matches 1.. run return fail

execute unless score @s light_green.piglin_girl_weapon.total matches 1.. run return run playsound minecraft:block.trial_spawner.close_shutter player @s ~ ~ ~ 1 1
execute if score @s light_green.adapt_piglin_girl_weapon matches 1.. run tag @s add light_green.use_adapt
execute if entity @s[tag=light_green.use_adapt] run function light_green:item/golem/mod/adapt/use_adapt {use:1}
execute unless entity @s[tag=light_green.use_adapt] run scoreboard players remove @s light_green.piglin_girl_weapon.use 1
tag @s remove light_green.use_adapt
scoreboard players add @s light_green.dagger_sprint.decost 1
tag @s add light_green.crack_apply_ready

execute store result storage light_green:player id int 1 run scoreboard players get @s light_green.player_id
function light_green:player/advancement/axe/effect_storage/0 with storage light_green:player

effect give @s resistance infinite 4 false
scoreboard players set @s light_green.sprint.resistance -1

scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 12500
scoreboard players set $z player_motion.api.launch 0

execute at @s run function player_motion:api/launch_xyz

playsound entity.breeze.wind_burst