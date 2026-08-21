scoreboard players remove @s light_green.hand_cannon_hit 10
execute store result storage light_green:player id int 1 run scoreboard players get @s light_green.player_id
execute at @s run playsound minecraft:block.vault.deactivate player @s ~ ~ ~ 2 2
tag @s add light_green.hand_cannon.user
execute at @s anchored eyes positioned ^ ^ ^ run function light_green:item/golem/hand_cannon/laser_wave/summon
tag @s remove light_green.hand_cannon.user