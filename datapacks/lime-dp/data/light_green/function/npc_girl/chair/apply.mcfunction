execute as @e[tag=light_green.chair.block,distance=..1,limit=1] run data remove entity @s Glowing
execute as @p[tag=light_green.have_passenger] at @s facing entity @e[tag=aj.piglin_girl_npc_head.root,distance=..20,type=item_display,limit=1] feet run rotate @s ~ ~
execute as @e[tag=light_green.piglin_girl_npc,distance=..20,type=villager,limit=1] run function light_green:npc_girl/apply/rotate