
scoreboard players add @s white.duration 1

## clear
execute if predicate white:flags/is_on_ground run return run function white:mob/beard_mage/1/orb/2
execute if score @s white.duration matches 100.. run return run function white:mob/beard_mage/1/orb/2