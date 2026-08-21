

execute if score @s white.duration matches 1..17 positioned ^1.5 ^1 ^-0.5 run tp @s ~ ~ ~ ~-20 ~
execute if score @s white.duration matches 18..42 positioned ^-1.5 ^ ^0.5 run tp @s ~ ~ ~ ~20 ~
execute if score @s[tag=!white.move.sovereign_blade.target] white.duration matches 43..55 positioned ^ ^ ^1.25 run tp @s ~ ~ ~ ~ ~
execute if score @s white.duration matches 49 run function white:mob/noodle_chef/1/3
execute if score @s white.duration matches 56..70 positioned ^ ^1.5 ^-0.5 run tp @s ~ ~ ~ ~ -45
execute if score @s white.duration matches 71.. positioned ^ ^ ^ run tp @s ~ ~ ~ ~ 5
