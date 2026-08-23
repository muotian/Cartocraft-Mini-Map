execute if entity @a[distance=..3] run scoreboard players add @s red_wool.enemy 1
execute unless entity @a[distance=..3] run scoreboard players set @s red_wool.enemy 0
execute unless score @s red_wool.enemy matches 20.. run return fail

execute as @a[distance=..3] run damage @s 70 red_wool:true_explosion by @e[type = creeper, limit=1, sort=nearest]
execute as @a[distance=..3] at @s run function red_wool:enchantment/dealt_true_explosion_particle
execute at @a[distance=..3] run data modify entity @s Fuse set value 0