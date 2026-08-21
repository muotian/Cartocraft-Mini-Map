execute store result storage light_green:player id int 1 run scoreboard players get @s light_green.player_id
function light_green:player/advancement/dagger/effect_storage/0 with storage light_green:player
scoreboard players set @s light_green.sprint.resistance 5

effect give @s resistance infinite 4 false

execute if score @s light_green.adapt_piglin_girl_weapon matches 1.. run tag @s add light_green.use_adapt
$execute if entity @s[tag=light_green.use_adapt] run function light_green:item/golem/mod/adapt/use_adapt {use:$(cost)}
$execute unless entity @s[tag=light_green.use_adapt] run scoreboard players remove @s light_green.piglin_girl_weapon.use $(cost)
tag @s remove light_green.use_adapt
scoreboard players set @s light_green.dagger_sprint 1