#
effect clear @s resistance
effect clear @s glowing
item replace entity @s weapon.offhand with air

playsound minecraft:item.shield.block player @a ~ ~ ~ 1 1
playsound minecraft:item.shield.block player @a ~ ~ ~ 1 1
playsound minecraft:entity.iron_golem.repair player @a ~ ~ ~ 0.7 0.8
playsound minecraft:block.anvil.land player @a ~ ~ ~ 1 1.5

particle dust{color:[0.612,0.612,0.612],scale:1.3} ~ ~1.5 ~ .3 .5 .3 0 50 normal
particle dust{color:[0.643,0.490,0.702],scale:1} ~ ~1.5 ~ .3 .5 .3 0 30 normal
particle item{item:"shield"} ~ ~1.5 ~ .3 .3 .3 0 30 normal

tag @s remove shield

effect give @s strength 3 0 false
effect give @s speed 3 1 true

#
execute on attacker run effect give @s slowness 1 1 true