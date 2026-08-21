
scoreboard players add @s white.duration 1

execute if score @s white.duration matches ..20 at @s run function white:move/prism_oath/s1/square/fx/use
execute if score @s white.duration matches ..10 at @s run function white:move/prism_oath/s1/square/fx/use
execute if score @s white.duration matches ..5 at @s run function white:move/prism_oath/s1/square/fx/use

execute if score @s white.duration matches 20.. run kill @s