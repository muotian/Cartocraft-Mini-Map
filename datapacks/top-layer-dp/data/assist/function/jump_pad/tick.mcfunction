#> assist:jump_pad/tick
# @s = marker(jump_pad)

function assist:jump_pad/spiral_0/animate

scoreboard players set $active assist.jump_pad 0
execute positioned ~-4 ~ ~-4 as @a[dx=7,dy=319,dz=7] store success score $active assist.jump_pad run tag @s add assist.jump_pad.around
execute if score $active assist.jump_pad matches 0 run return 0

data modify storage assist:jump_pad data set from entity @s data
execute as @a[tag=assist.jump_pad.around] run function assist:jump_pad/location_check with storage assist:jump_pad data

tag @a remove assist.jump_pad.around
