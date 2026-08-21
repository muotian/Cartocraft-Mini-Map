scoreboard players set @s mini_light.collected_soul 0
effect give @s strength 10 1 false
effect give @s speed 10 2 false
effect give @s jump_boost 10 2 false
effect give @s haste 10 1 false
effect give @s absorption 10 2 false
effect clear @s wither
effect clear @s poison
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 1
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 0.5
playsound minecraft:entity.phantom.death player @a ~ ~ ~ 0.8 0.5
function mini_light:weapons/candle/soul/magic/a
function mini_light:weapons/candle/soul/magic/b
function mini_light:weapons/candle/soul/magic/c