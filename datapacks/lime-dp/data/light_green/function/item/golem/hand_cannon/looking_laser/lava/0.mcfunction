execute if score @s light_green.hand_cannon_hit matches 10.. run return run function light_green:item/golem/hand_cannon/laser_wave/lava/0
scoreboard players set $looking_laser light_green.main.math 0
execute store result storage light_green:player id int 1 run scoreboard players get @s light_green.player_id
execute at @s run playsound minecraft:block.vault.deactivate player @s ~ ~ ~ 2 2
execute at @s run playsound minecraft:block.conduit.deactivate player @s ~ ~ ~ 0.2 2
tag @s add light_green.hand_cannon.user
execute at @s anchored eyes positioned ^ ^-0.3 ^ run function light_green:item/golem/hand_cannon/looking_laser/lava/1 with storage light_green:mob
tag @s remove light_green.hand_cannon.user