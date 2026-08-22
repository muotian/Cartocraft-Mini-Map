execute as @e[type=item_display,tag=aj.gray_pharaoh_coffin.root,limit=1] at @s run function animated_java:gray_pharaoh_coffin/animations/shake/play
execute on target run tellraw @s {translate:"gray.message.boss_coffin.incomplete.1"}
execute on target run tellraw @s {translate:"gray.message.boss_coffin.incomplete.2"}