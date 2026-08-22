tag @e[type=minecraft:item_display,tag=aj.gray_coffin.root,distance=..0.1,limit=1,sort=nearest] add gray.temp
execute as @e[type=minecraft:item_display,tag=gray.temp,tag=!gray.coffin.used] run function animated_java:gray_coffin/animations/open/play
tag @e[type=minecraft:item_display,tag=gray.temp] add gray.coffin.used