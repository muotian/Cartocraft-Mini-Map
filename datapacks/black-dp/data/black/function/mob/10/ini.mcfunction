data modify entity @s CustomName set value {"translate":"black.mob.8"}

particle block{block_state:"minecraft:magma_block"} ~ ~ ~ 1.5 1 1.5 0 45 force
particle minecraft:flame ~ ~1 ~ 1 1 1 0.1 100 force
execute at @s run particle minecraft:sonic_boom ~ ~ ~ 1.2 0.8 1.2 0.1 5 normal

playsound minecraft:entity.minecart.inside block @a[distance=..20] ~ ~1 ~ 2 1.6
playsound minecraft:entity.blaze.death block @a[distance=..20] ~ ~1 ~ 0.8 1.4
playsound minecraft:block.fire.extinguish block @a[distance=..20] ~ ~1 ~ 2 0.8 0.4
playsound minecraft:block.lava.pop block @a[distance=..20] ~ ~1 ~ 2 1.2 1

execute as @a[distance=..8] run function black:mob/10/ini2

fill ~5 ~ ~5 ~-5 ~ ~-5 fire replace air
fill ~5 ~1 ~5 ~-5 ~1 ~-5 fire replace air
fill ~5 ~-1 ~5 ~-5 ~-1 ~-5 fire replace air

kill @s

