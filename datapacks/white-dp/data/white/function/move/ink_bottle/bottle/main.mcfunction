
scoreboard players add @s white.duration 1

## clear
execute unless predicate white:flags/is_vehicle at @s run return run function white:move/ink_bottle/bottle/2
execute if score @s white.duration matches 200.. at @s run return run function white:move/ink_bottle/bottle/2