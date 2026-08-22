loot spawn ~ ~ ~ loot ccmini_gray:ritual_torch
tellraw @a [{translate:"gray.message.guide.2",color:"yellow"}]
scoreboard players set $state gray.map_event 2
kill @e[type=item_display,tag=gray.plot.ritual_torch,distance=..3,limit=1]
kill @s