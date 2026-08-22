execute as @s at @s run summon item ~ ~ ~ {Item:{id:"cookie"},Tags:["replace_cursor"]}
item replace entity @n[tag=replace_cursor] container.0 from entity @s weapon.offhand
item replace entity @s player.cursor with air
loot replace entity @s weapon.offhand loot ordered_splinter:prop/frozen_effect