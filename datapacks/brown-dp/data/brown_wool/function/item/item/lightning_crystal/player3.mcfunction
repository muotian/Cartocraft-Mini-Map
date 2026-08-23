clear @s amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] 64
damage @s 30 brown_wool:bypasses_cooldown2 by @s
summon lightning_bolt ~ ~-3 ~
scoreboard players reset @s brown_wool.lightning_crystal.overload2
tag @s add brown_wool.lightning_crystal.overload2
tag @s remove brown_wool.lightning_crystal2


