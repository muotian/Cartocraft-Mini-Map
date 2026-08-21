
scoreboard players add @s white.move.prism_oath.duration 1

execute if score @s white.move.prism_oath.duration matches ..20 positioned as @s positioned ^ ^ ^0.5 run function white:move/prism_oath/s1/tp
execute if score @s white.move.prism_oath.duration matches ..10 positioned as @s positioned ^ ^ ^0.5 run function white:move/prism_oath/s1/tp
execute if score @s white.move.prism_oath.duration matches ..5 positioned as @s positioned ^ ^ ^0.5 run function white:move/prism_oath/s1/tp

execute if score @s white.move.prism_oath.duration matches ..15 run execute if function white:move/prism_oath/s1/hitbox run function white:move/prism_oath/s1/hit
execute if score @s white.move.prism_oath.duration matches 20.. run function white:move/prism_oath/s1/clear

# fx
scoreboard players operation #self white.main = @s white.player.id
tag @e[tag=white.move.prism_oath.s1.square,type=marker,predicate=white:player/is_owner,limit=2] add white.target

execute positioned as @s anchored eyes positioned ^ ^ ^4 as @e[tag=white.target,tag=white.move.prism_oath.s1.square.1,type=marker,limit=1] rotated ~90 ~ run function white:move/prism_oath/s1/2
execute positioned as @s anchored eyes positioned ^ ^ ^3 as @e[tag=white.target,tag=white.move.prism_oath.s1.square.2,type=marker,limit=1] rotated ~-90 ~ run function white:move/prism_oath/s1/2

tag @e[tag=white.target,type=marker,limit=2] remove white.target

particle minecraft:cloud ^ ^1 ^-1 0.2 0.2 0.2 0.075 3 force
particle minecraft:end_rod ^ ^1 ^-1 0.2 0.2 0.2 0.075 3 force