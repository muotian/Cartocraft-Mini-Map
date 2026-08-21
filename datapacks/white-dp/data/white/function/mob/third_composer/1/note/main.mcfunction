
scoreboard players add @s white.duration 1

execute positioned ^ ^ ^0.4 run tp ~ ~ ~
execute as @a[predicate=white:player/victim,distance=..5] if function white:sys/hitbox/0.25x0.25x0.25 run tag @s add white.victim
execute if entity @a[tag=white.victim,distance=..5,limit=1] run function white:mob/third_composer/1/note/hit

execute unless block ^ ^ ^0.4 #white:transparent run return run function white:mob/third_composer/1/note/clear
execute if score @s white.duration matches 100.. run return run function white:mob/third_composer/1/note/clear

# fx
particle note ~ ~ ~ 0 0 0 1 1 force