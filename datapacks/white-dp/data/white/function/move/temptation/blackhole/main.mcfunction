
scoreboard players add @s white.duration 1

execute if score @s white.duration matches 1 run function white:move/temptation/blackhole/2
execute if score @s white.duration matches 1..10 run function white:move/temptation/blackhole/3
execute if score @s white.duration matches 11.. run function white:move/temptation/blackhole/clear