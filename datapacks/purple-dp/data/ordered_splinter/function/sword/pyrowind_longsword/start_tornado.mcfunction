playsound minecraft:ambient.soul_sand_valley.additions player @a ~ ~ ~ 2 2
playsound minecraft:block.fire.ambient player @a ~ ~ ~ 2 0.1
playsound minecraft:entity.breeze.whirl player @a ~ ~ ~ 2 0.5

tag @s add wool_purple.pyro_user

summon marker ^1.6 ^2 ^ {Tags:[wool_purple.pyro_wind,summon]}

execute as @e[tag=summon] at @s facing entity @e[tag=wool_purple.pyro_user,limit=1] feet run tp @s ~ ~ ~ ~-90 0
tag @e[tag=summon] remove summon

summon marker ^-1.6 ^2 ^ {Tags:[wool_purple.pyro_wind,summon]}

execute as @e[tag=summon] at @s facing entity @e[tag=wool_purple.pyro_user,limit=1] feet run tp @s ~ ~ ~ ~-90 0
tag @e[tag=summon] remove summon

tag @s remove wool_purple.pyro_user