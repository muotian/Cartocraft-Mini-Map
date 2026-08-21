
data modify storage white:temp pitch set from entity @s Rotation[1]
tp @s ~ ~ ~ ~ ~
data modify entity @s Rotation[1] set from storage white:temp pitch
data remove storage white:temp pitch