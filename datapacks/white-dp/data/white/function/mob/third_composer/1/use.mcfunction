
function white:sys/mob/charge/start_nomove
tag @s add white.mob.third_composer.1

data modify entity @s Motion set value [0,0.5,0]

# fx
function white:mob/third_composer/1/activate/use
playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~ ~ 1 1.5
playsound minecraft:ui.cartography_table.take_result master @a ~ ~ ~ 1 0.75