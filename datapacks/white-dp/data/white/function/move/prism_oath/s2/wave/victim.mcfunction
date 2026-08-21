
data modify storage white:temp motion.Pos1 set from entity @e[tag=white.target,type=marker,limit=1] Pos
data modify storage white:temp motion.Pos2 set from entity @s Pos

execute store result score #x1 white.main run data get storage white:temp motion.Pos1[0] 100
execute store result score #y1 white.main run data get storage white:temp motion.Pos1[1] 100
scoreboard players add #y1 white.main 200
execute store result score #z1 white.main run data get storage white:temp motion.Pos1[2] 100
execute store result score #x2 white.main run data get storage white:temp motion.Pos2[0] 100
execute store result score #y2 white.main run data get storage white:temp motion.Pos2[1] 100
execute store result score #z2 white.main run data get storage white:temp motion.Pos2[2] 100
execute store result entity @s Motion[0] double 0.0015 run scoreboard players operation #x1 white.main -= #x2 white.main
execute store result entity @s Motion[1] double 0.0015 run scoreboard players operation #y1 white.main -= #y2 white.main
execute store result entity @s Motion[2] double 0.0015 run scoreboard players operation #z1 white.main -= #z2 white.main

effect give @s slow_falling 2 0 true

data remove storage white:temp motion
tag @s remove white.victim

# fx
playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 0.3 1
particle minecraft:cloud ~ ~1 ~ 0.2 0.4 0.2 0.1 3 force