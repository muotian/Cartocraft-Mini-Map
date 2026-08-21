execute on target run tag @s add light_green.arena.action
execute if entity @a[tag=light_green.arena.action,limit=1] as @n[tag=light_green.arena.action] run function light_green:arena/dialog/0
execute if entity @a[tag=light_green.arena.action,limit=1] run tag @s add light_green.interaction
execute on target run tag @s remove light_green.arena.action
execute if entity @s[tag=light_green.interaction] run data remove entity @s interaction
execute if entity @s[tag=light_green.interaction] run tag @s remove light_green.interaction