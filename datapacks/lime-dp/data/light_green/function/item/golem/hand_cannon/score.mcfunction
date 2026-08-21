scoreboard players remove @s light_green.hand_cannon_cd 1
execute if score @s light_green.hand_cannon matches 2.. if score @s light_green.hand_cannon_cd matches 39 run function light_green:item/golem/hand_cannon/looking_laser/0
execute if score @s light_green.hand_cannon matches 3.. if score @s light_green.hand_cannon_cd matches 38 run function light_green:item/golem/hand_cannon/looking_laser/0
execute if score @s light_green.hand_cannon matches 4.. if score @s light_green.hand_cannon_cd matches 37 run function light_green:item/golem/hand_cannon/looking_laser/0

execute unless score @s light_green.hand_cannon_cd matches 1.. run scoreboard players reset @s light_green.hand_cannon