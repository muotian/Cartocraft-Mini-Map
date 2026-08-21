
scoreboard players add @s white.duration 1

scoreboard players set #loop white.main 4
execute at @s run function white:move/amigatito/cat/2

execute at @s if entity @e[tag=white.victim,distance=..3,limit=1] run function white:move/amigatito/cat/hit
execute if score @s white.duration matches 40.. run return run function white:move/amigatito/cat/clear
execute at @s unless block ^ ^ ^0.25 #white:transparent run return run function white:move/amigatito/cat/clear