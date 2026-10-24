#> jump_pad/land
# @s = player

advancement revoke @s only assist:jump_pad.land
tag @s remove assist.jump_pad.safe_fall
attribute @s minecraft:fall_damage_multiplier modifier remove assist:jump_pad.safe_fall
