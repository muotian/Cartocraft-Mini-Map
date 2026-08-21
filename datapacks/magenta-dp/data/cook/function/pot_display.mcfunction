#

execute unless items block ~ ~ ~ container.0 * run data remove entity @e[type=item_display,tag=MagentaSlot1,distance=..0.1,limit=1] item.id
execute unless items block ~ ~ ~ container.1 * run data remove entity @e[type=item_display,tag=MagentaSlot2,distance=..0.1,limit=1] item.id
execute unless items block ~ ~ ~ container.2 * run data remove entity @e[type=item_display,tag=MagentaSlot3,distance=..0.1,limit=1] item.id
execute unless items block ~ ~ ~ container.3 * run data remove entity @e[type=item_display,tag=MagentaSlot4,distance=..0.1,limit=1] item.id
execute unless items block ~ ~ ~ container.4 * run data remove entity @e[type=item_display,tag=MagentaSlot5,distance=..0.1,limit=1] item.id


data modify entity @e[type=item_display,tag=MagentaSlot1,distance=..0.1,limit=1] item set from block ~ ~ ~ Items[{Slot:0b}]
data modify entity @e[type=item_display,tag=MagentaSlot2,distance=..0.1,limit=1] item set from block ~ ~ ~ Items[{Slot:1b}]
data modify entity @e[type=item_display,tag=MagentaSlot3,distance=..0.1,limit=1] item set from block ~ ~ ~ Items[{Slot:2b}]
data modify entity @e[type=item_display,tag=MagentaSlot4,distance=..0.1,limit=1] item set from block ~ ~ ~ Items[{Slot:3b}]
data modify entity @e[type=item_display,tag=MagentaSlot5,distance=..0.1,limit=1] item set from block ~ ~ ~ Items[{Slot:4b}]
