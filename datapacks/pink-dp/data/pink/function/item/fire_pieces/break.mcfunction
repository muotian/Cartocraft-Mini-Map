#
scoreboard players set @s pink.item.fire_pieces.break 0
execute unless items entity @s weapon.offhand *[custom_data~{pink_sp_item:"fire_pieces"}] run return fail

#
execute anchored eyes positioned ^ ^ ^1.5 as @e[distance=..3,type=!#pink:object] run data modify entity @s Fire set value 100

playsound minecraft:entity.generic.burn player @a ~ ~ ~ .6 1
playsound minecraft:item.firecharge.use player @a ~ ~ ~ .6 0.8
playsound minecraft:entity.blaze.ambient player @a ~ ~ ~ .6 0.8

execute anchored eyes run particle minecraft:lava ~ ~ ~ .2 .2 .2 0 15
particle minecraft:flame ~ ~1 ~ .4 .4 .4 .1 15
