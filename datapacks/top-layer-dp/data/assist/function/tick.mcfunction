#> assist:tick
data remove storage assist:jump_pad data
execute as @e[type=marker,tag=assist.booster] at @s if entity @a[distance=..30] run function assist:booster/tick
execute as @e[type=marker,tag=assist.jump_pad] at @s positioned ~-30 ~-30 ~-30 if entity @a[dx=59,dy=319,dz=59] positioned as @s run function assist:jump_pad/tick
