execute positioned ^ ^ ^0.25 if block ~ ~ ~ #ordered_splinter:transparent if entity @s[distance=..15] run function ordered_splinter:boss/archdemon/animation/hellfire_raycast
particle flame ^ ^ ^ 0.15 0.15 0.15 6767 5
execute positioned ~-.5 ~-.5 ~-.5 if entity @p[dx=0,tag=!wool_purple.hellfire_target] run function ordered_splinter:boss/archdemon/animation/hellfire_damage
execute positioned ~-.5 ~-.5 ~-.5 if entity @n[dx=0,tag=!wool_purple.hellfire_target,type=#mobs,tag=!wool_purple.boss_mainbody] run function ordered_splinter:boss/archdemon/animation/hellfire_mob_damage