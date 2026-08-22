# Marker
scoreboard players add @s pink._star.marker 1

# bonus
tag @s add target

execute if score @s pink._star.marker matches ..19 on attacker if entity @s[tag=pink.armor.star_set] if predicate pink:probability/40 run scoreboard players add @n[tag=target] pink._star.marker 1

tag @s remove target
#

execute store result storage pink:star marker int 1 run scoreboard players get @s pink._star.marker
data modify storage pink:star marker set string storage pink:star marker
execute unless predicate pink:star/marker run function pink:skills_1/star/new_marker

execute if predicate pink:star/marker on passengers run data modify entity @s text.text set from storage pink:star marker

# Effect
summon marker ~ ~ ~ {Tags:["slowness","effect"]}
summon marker ~ ~ ~ {Tags:["weakness","effect"]}

kill @e[tag=effect,type=marker,limit=1,sort=random]

execute if entity @n[tag=effect,type=marker,tag=slowness] run effect give @s slowness 7 0 false
execute if entity @n[tag=effect,type=marker,tag=weakness] run effect give @s weakness 7 0 false


kill @n[tag=effect,type=marker]


# 


# m
execute on attacker at @s run function pink:skills_1/star/attacker