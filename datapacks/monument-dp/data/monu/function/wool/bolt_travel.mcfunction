execute at @e[tag=energy_bolt,type=item_display] run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute as @e[tag=energy_bolt,type=item_display] at @s run tp @s ^ ^ ^0.1

$execute if entity @e[tag=energy_bolt,type=item_display] run function monu:wool/bolt_travel with storage monu:points $(color)
