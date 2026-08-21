
scoreboard players add @s white.duration 1

execute if score @s white.duration matches 10 run function white:mob/golden_fantasy/1/2
execute if score @s white.duration matches 30.. run function white:mob/golden_fantasy/1/3

## clear
execute if score @s white.duration matches 100.. run data merge entity @s {NoGravity:false,Glowing:false}
execute if score @s white.duration matches 100.. run function white:mob/golden_fantasy/1/clear