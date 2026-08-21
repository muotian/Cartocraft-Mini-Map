scoreboard players add @s light_green.main.math 1
execute store result storage light_green:weapon id int 1 run scoreboard players get @s light_green.player_id
execute at @s unless block ^ ^ ^1 #light_green:not run return run kill @s
execute at @s if entity @s[tag=!light_green.water] if entity @s[tag=!light_green.lava] run function light_green:item/golem/hand_cannon/laser_wave/1
execute at @s if entity @s[tag=light_green.water] run function light_green:item/golem/hand_cannon/laser_wave/water/1
execute at @s if entity @s[tag=light_green.lava] run function light_green:item/golem/hand_cannon/laser_wave/lava/1
execute if entity @s[tag=!light_green.water] if score @s light_green.main.math matches 50.. run kill @s
execute if entity @s[tag=light_green.water] if score @s light_green.main.math matches 63.. run kill @s