execute unless score @s light_green.piglin_girl_weapon.total matches 1.. run return run playsound minecraft:block.trial_spawner.close_shutter player @s ~ ~ ~ 1 1
execute if score @s light_green.adapt_piglin_girl_weapon matches 1.. run tag @s add light_green.use_adapt
execute if entity @s[tag=light_green.use_adapt] run function light_green:item/golem/mod/adapt/use_adapt {use:1}
execute unless entity @s[tag=light_green.use_adapt] run scoreboard players remove @s light_green.piglin_girl_weapon.use 1
tag @s remove light_green.use_adapt

scoreboard players add @s light_green.dagger_storage 3
execute at @s run playsound minecraft:block.trial_spawner.spawn_item player @s ~ ~ ~ 1 1