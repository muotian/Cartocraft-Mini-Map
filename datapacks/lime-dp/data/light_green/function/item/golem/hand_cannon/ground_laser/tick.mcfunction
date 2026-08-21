scoreboard players add @s light_green.main.math 1

execute store result storage light_green:weapon id int 1 run scoreboard players get @s light_green.player_id

execute unless entity @s[tag=light_green.water] unless entity @s[tag=light_green.lava] run function light_green:item/golem/hand_cannon/ground_laser/damage with storage light_green:weapon
execute if entity @s[tag=light_green.water] run function light_green:item/golem/hand_cannon/ground_laser/water_damage with storage light_green:weapon
execute if entity @s[tag=light_green.lava] run function light_green:item/golem/hand_cannon/ground_laser/lava_damage with storage light_green:weapon

tp @s ~ ~ ~ ~10 ~

execute if score @s light_green.main.math matches 39.. run return run kill @s

execute if score @s light_green.main.math matches 35.. run return run function light_green:item/golem/hand_cannon/ground_laser/remove

execute if score @s light_green.main.math matches 10.. run return fail

execute store result score $laser_width light_green.main.math run data get entity @s transformation.scale[0] 10
execute store result entity @s transformation.scale[0] float 0.1 run scoreboard players add $laser_width light_green.main.math 1
execute store result entity @s transformation.scale[2] float 0.1 run scoreboard players get $laser_width light_green.main.math

execute store result score $laser_high light_green.main.math run data get entity @s transformation.scale[1]
execute store result entity @s transformation.scale[1] int 1 run scoreboard players add $laser_high light_green.main.math 2

tp @s ~ ~1 ~