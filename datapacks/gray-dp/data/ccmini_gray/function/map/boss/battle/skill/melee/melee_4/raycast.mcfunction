scoreboard players add @s gray.distance 1

execute positioned ~ ~1 ~ run particle sweep_attack ~ ~ ~ 0.1 0.5 0.1 0 1
execute positioned ~ ~0.5 ~ run particle falling_dust{block_state:{Name:sand}} ~ ~ ~ 0.3 0.2 0.3 0 3

execute positioned ~ ~0.5 ~ run function ccmini_gray:map/boss/battle/skill/melee/melee_4/damage


execute unless block ~ ~ ~ #ccmini_gray:transparent positioned ^ ^ ^-0.5 run return run function ccmini_gray:map/boss/battle/skill/melee/melee_4/flash
execute if score @s gray.distance matches 12.. run return run function ccmini_gray:map/boss/battle/skill/melee/melee_4/flash
execute positioned ^ ^ ^0.5 run function ccmini_gray:map/boss/battle/skill/melee/melee_4/raycast
