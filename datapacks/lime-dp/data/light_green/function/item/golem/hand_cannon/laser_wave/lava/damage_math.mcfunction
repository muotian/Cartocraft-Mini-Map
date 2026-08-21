execute store result score $fire light_green.main.math run data get entity @s Fire
data remove entity @s Fire
execute store result storage light_green:weapon damage double 1 run scoreboard players operation $fire light_green.main.math /= $10 light_green.main.math
execute unless score $fire light_green.main.math matches 0 run function light_green:item/golem/hand_cannon/laser_wave/lava/apply with storage light_green:weapon