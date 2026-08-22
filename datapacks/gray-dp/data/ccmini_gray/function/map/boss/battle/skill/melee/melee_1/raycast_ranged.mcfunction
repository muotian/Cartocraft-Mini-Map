scoreboard players add @s gray.distance 1







execute unless block ~ ~ ~ #ccmini_gray:transparent positioned ^ ^ ^-0.5 run return run function ccmini_gray:map/boss/battle/skill/melee/melee_1/flash
execute if score @s gray.distance matches 24.. run return run function ccmini_gray:map/boss/battle/skill/melee/melee_1/flash
execute positioned ^ ^ ^0.5 run function ccmini_gray:map/boss/battle/skill/melee/melee_1/raycast_ranged
