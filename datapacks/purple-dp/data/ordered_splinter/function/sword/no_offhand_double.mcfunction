execute as @s at @s run summon item ~ ~ ~ {Item:{id:"cookie"},Tags:["replace_offhand"],PickupDelay:0}
item replace entity @n[tag=replace_offhand] container.0 from entity @s weapon.offhand
item replace entity @s weapon.offhand with air
title @s times 0.25s 1.5s 0.25s
title @s title ""
title @s subtitle [{"translate":"no_offhand_double","color":"dark_red"}]
execute at @s run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 1.5