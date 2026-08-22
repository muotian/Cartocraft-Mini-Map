execute as @s at @s run summon item ~ ~ ~ {Item:{id:"cookie"},Tags:["replace_hand"]}
item replace entity @n[tag=replace_hand] container.0 from entity @s weapon.offhand
clear @s *[custom_data~{frozen_effect: 1b}]
loot replace entity @s weapon.offhand loot ordered_splinter:prop/frozen_effect