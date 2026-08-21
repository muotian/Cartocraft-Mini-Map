
scoreboard players add @s white.move.goodnight.duration 1
execute if entity @s[tag=white.move.goodnight.dizzy] run return run function white:move/goodnight/dizzy/main
execute if score @s white.move.goodnight.duration matches 20.. run function white:move/goodnight/use