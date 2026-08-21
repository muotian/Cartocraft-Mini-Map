
tp ~ ~ ~

execute if entity @s[tag=white.move.temptation.target] run return fail

attribute @s movement_speed modifier add white:temptation -1 add_multiplied_total
attribute @s jump_strength modifier add white:temptation -1 add_multiplied_total
attribute @s attack_damage modifier add white:temptation -1 add_multiplied_total
tag @s add white.move.temptation.target