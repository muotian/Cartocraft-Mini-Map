tag @s add wool_purple.attacker
execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,type=!#no_hp,tag=!wool_purple.attacker] run function ordered_splinter:boss/archdemon/animation/attack_damage
tag @s remove wool_purple.attacker