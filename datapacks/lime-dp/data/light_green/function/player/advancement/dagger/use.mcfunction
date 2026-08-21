tag @s add light_green.use_dagger
schedule function light_green:player/advancement/dagger/reback/0 1t
advancement revoke @s only light_green:use_dagger

execute if predicate light_green:shift run return run function light_green:player/advancement/dagger/sprint_detect


execute if score @s light_green.dagger_storage matches 1.. store result storage light_green:player id int 1 run scoreboard players get @s light_green.player_id
execute if score @s light_green.dagger_storage matches 1.. run function light_green:item/piglin_girl/dagger/throw with storage light_green:player
execute if score @s light_green.dagger_storage matches 1.. run scoreboard players remove @s light_green.dagger_storage 1


execute unless score @s light_green.dagger_storage matches 1.. run function light_green:player/advancement/dagger/reload