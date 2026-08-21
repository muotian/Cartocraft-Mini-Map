
particle minecraft:sweep_attack ^ ^.5 ^1.5 .8 .8 .8 1 3
particle minecraft:soul_fire_flame ^ ^.5 ^.5 .2 .2 2 .1 1
particle minecraft:soul ^ ^.5 ^.5 .2 .2 2 .1 1


execute as @e[type=#mini_light:mobs, type=!player,distance=..1.5] run damage @s 1.7 mini_light:player_spark by @p

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 0
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 2
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 2
playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 1 1

# 大
execute facing entity @e[sort=random, limit=2] eyes run particle explosion ^ ^1 ^1 1360 0 6049 0.001 0
# 中
execute facing entity @e[sort=random, limit=2] eyes run particle explosion ^ ^1 ^1 1651 0 6137 0.001 0
# 小
execute facing entity @e[sort=random, limit=3] eyes run particle explosion ^ ^1 ^1 1751 0 6137 0.001 0
