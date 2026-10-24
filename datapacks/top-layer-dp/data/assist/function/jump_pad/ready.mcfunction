#> assist:jump_pad/launch
# @s = player

tag @s add assist.jump_pad.launch_ready

attribute @s minecraft:jump_strength modifier add assist:jump_pad.launch_ready -1 add_multiplied_total

execute store result score @s assist.jump_pad.vx run data get storage assist:jump_pad data.vx
execute store result score @s assist.jump_pad.vy run data get storage assist:jump_pad data.vy
execute store result score @s assist.jump_pad.vz run data get storage assist:jump_pad data.vz

schedule function assist:jump_pad/cancel_check 1t
