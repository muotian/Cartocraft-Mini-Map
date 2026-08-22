##
execute facing entity @p eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^.31 ~ ~

particle minecraft:end_rod ~ ~ ~ 0.08 0.08 0.08 0.01 1
particle dust_color_transition{from_color:[0.565,0.380,1.000],to_color:[0.769,0.776,1.000],scale:1.3} ~ ~ ~ .1 .1 .1 0 1 normal
particle dust_color_transition{from_color:[0.769,0.776,1.000],to_color:[0.678,0.122,1.000],scale:1.3} ~ ~ ~ .1 .1 .1 0 2 normal


#
execute if entity @a[dx=0] run function pink:monster/glass/damage

#
scoreboard players add @s pink.monster.glass.skill 1
execute if score @s pink.monster.glass.skill matches 80.. run kill @s


