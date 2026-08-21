
attribute @s follow_range base set 12
attribute @s movement_speed modifier remove white:temptation
attribute @s jump_strength modifier remove white:temptation
attribute @s attack_damage modifier remove white:temptation
tag @s remove white.move.temptation.target

execute facing entity @e[tag=white.move.temptation.blackhole.self,type=marker,limit=1] eyes rotated ~180 -45 run function white:sys/motion {s:0.75}