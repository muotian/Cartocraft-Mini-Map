#> assist:tick

data remove storage assist:jump_pad data
execute as @e[type=minecraft:marker,tag=assist.booster] at @s if entity @a[distance=..30] run function assist:booster/tick
execute as @e[type=minecraft:marker,tag=assist.jump_pad] at @s positioned ~-30 ~-30 ~-30 if entity @a[dx=59,dy=319,dz=59] positioned as @s run function assist:jump_pad/tick
execute as @e[type=minecraft:interaction,tag=assist.gateway.core] at @s run function assist:gateway/core/tick
execute as @e[type=minecraft:interaction,tag=assist.gateway.button] at @s run function assist:gateway/button/sight_check

execute as @a[scores={assist.gateway.timer=1..}] at @s run function assist:gateway/player/tp_timer
