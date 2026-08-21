execute on target run tag @s add light_green.chair.action
execute as @e[tag=light_green.chair.block,distance=..1,limit=1] on passengers run tag @s add light_green.have_passenger
execute unless entity @e[tag=light_green.have_passenger,limit=1,distance=..5] run ride @n[tag=light_green.chair.action] mount @e[tag=light_green.chair.block,distance=..5,limit=1]
execute as @e[tag=light_green.chair.block,distance=..1,limit=1] store result score $glow light_green.main.math run data get entity @s Glowing
execute if entity @e[tag=light_green.have_passenger,limit=1,distance=..5] if score $glow light_green.main.math matches 1 run function light_green:npc_girl/chair/apply
execute as @e[tag=light_green.chair.block,distance=..1,limit=1] on passengers run tag @s remove light_green.have_passenger
execute if entity @a[tag=light_green.chair.action,limit=1] run tag @s add light_green.interaction
execute on target run tag @s remove light_green.chair.action
execute if entity @s[tag=light_green.interaction] run data remove entity @s interaction
execute if entity @s[tag=light_green.interaction] run tag @s remove light_green.interaction