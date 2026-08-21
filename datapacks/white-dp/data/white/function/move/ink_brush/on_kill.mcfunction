
advancement revoke @s only white:move/ink_brush/on_kill

tag @s add white.move.ink_brush.on_kill
item modify entity @s weapon.mainhand {function:"minecraft:set_custom_data",tag:"{white:{ink_brush:1b}}"}

# fx
particle minecraft:enchant ~ ~1 ~ 0.2 0.6 0.2 0.3 30 force
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 0.9
playsound minecraft:entity.copper_golem.step master @a ~ ~ ~ 1 0.5
playsound minecraft:entity.copper_golem.step master @a ~ ~ ~ 1 0.5