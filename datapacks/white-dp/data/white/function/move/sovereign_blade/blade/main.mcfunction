
scoreboard players add @s white.duration 1

## smash
execute if score @s white.duration matches 2 positioned ^ ^ ^15 run function white:move/sovereign_blade/blade/2

## pull up
execute if score @s white.duration matches 30.. run function white:move/sovereign_blade/blade/3

## clear
execute if score @s white.duration matches 80.. run function white:move/sovereign_blade/blade/clear