
scoreboard players add @s white.duration 1

rotate @s ~20 ~

execute if score @s white.duration matches 15.. at @s run function white:move/prism_oath/s2/brust/2

# fx
execute if score @s white.duration matches ..10 run particle electric_spark ^1 ^ ^ 0 0 0 0 0 force
execute if score @s white.duration matches ..10 run return run particle electric_spark ^-1 ^ ^ 0 0 0 0 0 force
execute if score @s white.duration matches 11.. run particle electric_spark ^0.75 ^ ^ 0 0 0 0 0 force
execute if score @s white.duration matches 11.. run particle electric_spark ^-0.75 ^ ^ 0 0 0 0 0 force