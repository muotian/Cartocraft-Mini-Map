#
scoreboard players set @s pink.item.wheat_pieces.break 0
execute unless items entity @s weapon.offhand *[custom_data~{pink_sp_item:"wheat_pieces"}] run return fail

effect give @s saturation 1 1
playsound minecraft:entity.player.burp player @s ~ ~ ~ 1 1
playsound minecraft:entity.generic.eat player @s ~ ~ ~ 1 1

execute anchored eyes run particle block{block_state:"minecraft:hay_block"} ^ ^ ^1 .3 .3 .3 0 8 normal
particle happy_villager ~ ~1.5 ~ .4 .4 .4 0 15
