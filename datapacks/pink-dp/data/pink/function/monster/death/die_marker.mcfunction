execute unless entity @n[distance=..20,tag=pink_mobs] run kill @s

#
execute unless entity @e[tag=pink.death.die_marker.target] run tag @e[tag=pink_mobs,distance=..20,limit=1,sort=furthest] add pink.death.die_marker.target
execute facing entity @n[tag=pink.death.die_marker.target] eyes run tp @s ^ ^ ^0.3 ~10 ~

#
particle dust_color_transition{from_color:[0.020,0.000,0.000],to_color:[0.910,0.000,0.000],scale:1.5} ~ ~ ~ 0.07 0.07 0.07 0 20 normal
particle dust_color_transition{from_color:[0.020,0.000,0.000],to_color:[0.910,0.000,0.000],scale:1} ~ ~ ~ 0.15 0.15 0.15 0 10 normal

#
execute as @e[tag=pink_mobs,dx=0,tag=pink.death.die_marker.target] at @s run function pink:monster/death/die_summon


