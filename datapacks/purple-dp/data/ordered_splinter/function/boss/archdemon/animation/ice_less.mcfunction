execute if predicate ordered_splinter:on_fire run summon splash_potion ~ ~1 ~ {Item:{id:snow,components:{potion_contents:{potion:water}}},Motion:[0,-100,0]}
execute if items entity @s weapon.offhand *[custom_data~{frozen_effect: 1b}] run return fail
execute as @s at @s run summon item ~ ~ ~ {Item:{id:"cookie"},Tags:["replace_frozen_effect"]}
item replace entity @n[tag=replace_frozen_effect] container.0 from entity @s weapon.offhand
loot replace entity @s weapon.offhand loot ordered_splinter:prop/frozen_effect