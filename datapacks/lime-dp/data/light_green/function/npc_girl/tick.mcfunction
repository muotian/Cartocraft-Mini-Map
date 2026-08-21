execute if entity @s[tag=light_green.end] unless entity @p[distance=..50] run function light_green:npc_girl/kill
execute at @s as @e[tag=aj.piglin_girl_npc.root,type=item_display,limit=1] rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute unless score @s light_green.dialog matches 1.. on passengers on target run tag @s add light_green.arena_npc.action
execute if entity @a[tag=light_green.arena_npc.action,limit=1] run function light_green:npc_girl/talk/0
execute if entity @a[tag=light_green.arena_npc.action,limit=1] on passengers run tag @s add light_green.interaction 
execute on passengers on target run tag @s remove light_green.arena_npc.action
function light_green:npc_girl/rotate/convert
execute as @n[tag=light_green.chair.interaction,type=interaction,distance=..20] at @s run function light_green:npc_girl/chair/tick
execute if score @s light_green.dialog.time matches 1.. run function light_green:npc_girl/talk/time
execute on passengers if entity @s[tag=light_green.interaction] run data remove entity @s interaction
execute on passengers if entity @s[tag=light_green.interaction] run tag @s remove light_green.interaction
execute if score @s light_green.piglin_girl_type matches 1.. run function light_green:npc_girl/animation/convert