
scoreboard players add @s white.duration 1

scoreboard players operation #self white.main = @s white.mob_target.id
tag @a[predicate=white:player/is_owner,limit=1] add white.target

# if (no target player found) :
execute unless entity @a[tag=white.target,limit=1] run return fail

execute at @a[tag=white.target,limit=1] rotated ~ 0 positioned ^ ^ ^3 facing ^ ^ ^-1 run function white:mob/noodle_chef/1/2
execute if score @s white.duration matches 95.. run function white:mob/noodle_chef/1/clear

tag @a[tag=white.target,limit=1] remove white.target

# fx
particle effect{color:[0.780,0.984,1.000]} ^0.75 ^2 ^ 0.1 0.1 0.1 0 1 force
particle effect{color:[0.780,0.984,1.000]} ^-0.75 ^2 ^ 0.1 0.1 0.1 0 1 force