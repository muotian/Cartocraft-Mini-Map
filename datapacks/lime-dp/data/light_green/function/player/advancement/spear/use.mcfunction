tag @s add light_green.use_spear
schedule function light_green:player/advancement/spear/reback/0 1t
advancement revoke @s only light_green:use_spear

execute unless score @s light_green.piglin_girl_weapon.total matches 2.. run return run playsound minecraft:block.trial_spawner.close_shutter player @s ~ ~ ~ 1 1
execute if score @s light_green.adapt_piglin_girl_weapon matches 1.. run tag @s add light_green.use_adapt
execute if entity @s[tag=light_green.use_adapt] run function light_green:item/golem/mod/adapt/use_adapt {use:2}
execute unless entity @s[tag=light_green.use_adapt] run scoreboard players remove @s light_green.piglin_girl_weapon.use 2
tag @s remove light_green.use_adapt
scoreboard players add @s light_green.dagger_sprint.decost 2

function light_green:player/advancement/spear/effect_storage/0 with storage light_green:player

playsound minecraft:entity.camel_husk.dash player @s ~ ~ ~ 4 1

effect give @s resistance infinite 4 false
attribute @s gravity modifier add light_green:golden_spear_sprint -0.75 add_multiplied_total
attribute @s knockback_resistance modifier add light_green:golden_spear_sprint 1 add_value
scoreboard players set @s light_green.sprint.resistance 15
scoreboard players set @s light_green.spear_sprint 1
scoreboard players reset @s light_green.crack
tag @s remove light_green.crack_apply
function light_green:item/piglin_girl/axe/clear_fall
function light_green:item/piglin_girl/axe/claer_gravity

item modify entity @s weapon.mainhand light_green:deupgrade_spear_0