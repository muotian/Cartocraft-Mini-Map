$damage @s $(damage) light_green:laser by @p[scores={light_green.player_id=$(id)},distance=..50]
execute at @s run playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 3 2