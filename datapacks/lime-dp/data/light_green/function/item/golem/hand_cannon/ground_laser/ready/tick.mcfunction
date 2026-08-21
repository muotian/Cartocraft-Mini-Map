scoreboard players add @s light_green.main.math 1

execute unless entity @s[tag=light_green.water] unless entity @s[tag=light_green.lava] if score @s light_green.main.math matches 19 run return run function light_green:item/golem/hand_cannon/ground_laser/summon
execute if entity @s[tag=light_green.water] if score @s light_green.main.math matches 19 run return run function light_green:item/golem/hand_cannon/ground_laser/summon_water
execute if entity @s[tag=light_green.lava] if score @s light_green.main.math matches 19 run return run function light_green:item/golem/hand_cannon/ground_laser/summon_lava

execute if score @s light_green.main.math matches 15.. run return run function light_green:item/golem/hand_cannon/ground_laser/ready/remove

execute if score @s light_green.main.math matches 5.. run return fail

execute store result score $laser_width light_green.main.math run data get entity @s transformation.scale[0]
execute store result entity @s transformation.scale[0] int 1 run scoreboard players add $laser_width light_green.main.math 1
execute store result entity @s transformation.scale[2] int 1 run scoreboard players get $laser_width light_green.main.math
execute if entity @s[tag=light_green.lava] store result entity @s transformation.scale[0] int 1 run scoreboard players add $laser_width light_green.main.math 1
execute if entity @s[tag=light_green.lava] store result entity @s transformation.scale[2] int 1 run scoreboard players get $laser_width light_green.main.math