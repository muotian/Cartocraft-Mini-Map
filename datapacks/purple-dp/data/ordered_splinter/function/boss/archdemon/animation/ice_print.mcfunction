execute as @s at @s run summon item ~ ~ ~ {Item:{id:"cookie"},Tags:["replace_hand"]}
item replace entity @n[tag=replace_hand] container.0 from entity @s weapon.offhand
item replace entity @s weapon.mainhand with air
loot replace entity @s weapon.offhand loot ordered_splinter:prop/frozen_effect