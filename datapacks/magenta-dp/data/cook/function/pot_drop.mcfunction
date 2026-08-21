#

data remove entity @s attack
execute if score @e[type=block_display,distance=..6,limit=1,sort=nearest] MagentaCooking matches 1 run return 0

data modify block ~ ~ ~ TransferCooldown set value 60s

execute if items block ~ ~ ~ container.0 * run summon item ~ ~1 ~ {Tags:["MagentaSlot1"],PickupDelay:3,Item:{id:"stick",count:1},Motion:[0,0.15,0]}
execute if items block ~ ~ ~ container.1 * run summon item ~ ~1 ~ {Tags:["MagentaSlot2"],PickupDelay:3,Item:{id:"stick",count:1},Motion:[0,0.15,0]}
execute if items block ~ ~ ~ container.2 * run summon item ~ ~1 ~ {Tags:["MagentaSlot3"],PickupDelay:3,Item:{id:"stick",count:1},Motion:[0,0.15,0]}
execute if items block ~ ~ ~ container.3 * run summon item ~ ~1 ~ {Tags:["MagentaSlot4"],PickupDelay:3,Item:{id:"stick",count:1},Motion:[0,0.15,0]}
execute if items block ~ ~ ~ container.4 * run summon item ~ ~1 ~ {Tags:["MagentaSlot5"],PickupDelay:3,Item:{id:"stick",count:1},Motion:[0,0.15,0]}

# execute unless items block ~ ~ ~ container.0 * run kill @e[type=item,tag=MagentaSlot1,limit=1,sort=nearest,distance=..1.5]
# execute unless items block ~ ~ ~ container.1 * run kill @e[type=item,tag=MagentaSlot2,limit=1,sort=nearest,distance=..1.5]
# execute unless items block ~ ~ ~ container.2 * run kill @e[type=item,tag=MagentaSlot3,limit=1,sort=nearest,distance=..1.5]
# execute unless items block ~ ~ ~ container.3 * run kill @e[type=item,tag=MagentaSlot4,limit=1,sort=nearest,distance=..1.5]
# execute unless items block ~ ~ ~ container.4 * run kill @e[type=item,tag=MagentaSlot5,limit=1,sort=nearest,distance=..1.5]

data modify entity @e[type=item,tag=MagentaSlot1,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:0b}]
data modify entity @e[type=item,tag=MagentaSlot2,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:1b}]
data modify entity @e[type=item,tag=MagentaSlot3,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:2b}]
data modify entity @e[type=item,tag=MagentaSlot4,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:3b}]
data modify entity @e[type=item,tag=MagentaSlot5,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:4b}]

item replace block ~ ~ ~ container.0 with air
item replace block ~ ~ ~ container.1 with air
item replace block ~ ~ ~ container.2 with air
item replace block ~ ~ ~ container.3 with air
item replace block ~ ~ ~ container.4 with air


