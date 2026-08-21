#

execute as @e[type=item,distance=..1] if items entity @s container.0 hopper run kill @s

kill @e[type=item_display,tag=CookingPot,distance=..0.1]

kill @s

summon item ~ ~ ~ {Item:{id:"copper_block",count:1b},Motion:[0,0.25,0],PickupDelay:20s}
