#
execute store result storage pink:monster orderless_x double 0.1 run random value -40..40
execute store result storage pink:monster orderless_z double 0.1 run random value -40..40

function pink:monster/orderless/tp2 with storage pink:monster {}

playsound minecraft:entity.enderman.teleport player @a ~ ~ ~
playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 0.7 0
playsound minecraft:entity.allay.death player @a ~ ~ ~ 0.4 0.8

particle minecraft:smoke ~ ~1 ~ .5 .5 .5 0 400
