#> assist:jump_pad/cancel
# @s = player

tag @s remove assist.jump_pad.launch_ready
attribute @s minecraft:jump_strength modifier remove assist:jump_pad.launch_ready
scoreboard players reset @s assist.jump_pad.vx
scoreboard players reset @s assist.jump_pad.vy
scoreboard players reset @s assist.jump_pad.vz
