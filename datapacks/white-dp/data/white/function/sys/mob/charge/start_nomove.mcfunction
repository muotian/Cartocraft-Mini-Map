
scoreboard players set @s white.mob.cd 2147483647
scoreboard players reset @s white.duration

attribute @s knockback_resistance modifier add white:mob.charge 1 add_value
attribute @s attack_damage modifier add white:mob.charge -1 add_multiplied_total
attribute @s movement_speed modifier add white:mob.charge -1 add_multiplied_total