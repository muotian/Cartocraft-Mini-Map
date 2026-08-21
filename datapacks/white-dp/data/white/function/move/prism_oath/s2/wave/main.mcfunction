
scoreboard players add @s white.duration 1

execute at @s run function white:move/prism_oath/s2/wave/2
execute at @s run function white:move/prism_oath/s2/wave/2

execute if score @s white.duration matches 7 run function white:move/prism_oath/s2/brust/use
execute if score @s white.duration matches 10.. run function white:move/prism_oath/s2/wave/clear

execute if entity @e[tag=white.victim,distance=..10,limit=1] run function white:move/prism_oath/s2/wave/hit

# fx
execute at @s run function white:move/prism_oath/s2/wave/fx