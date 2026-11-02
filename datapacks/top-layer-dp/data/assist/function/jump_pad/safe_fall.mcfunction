#> assist:jump_pad/safe_fall
# @s = player

tag @s add assist.jump_pad.safe_fall
attribute @s minecraft:fall_damage_multiplier modifier add assist:jump_pad.safe_fall -1 add_multiplied_total

schedule function assist:jump_pad/cloud 1t
