scoreboard objectives add tools.aj_restored dummy

execute as @e[type=minecraft:item_display,tag=aj.global.root] unless score @s tools.aj_restored matches 1 at @s run function tools:restore_aj/update
