execute positioned ~ ~-0.5 ~ run function light_green:enchantment_add/gui/0

execute positioned ~ ~-0.5 ~ if block ~ ~ ~ barrel run return fail
playsound block.gilded_blackstone.break block @a ~ ~ ~ 1 1
particle block{block_state:blackstone} ~ ~ ~ 0.1 0.1 0.1 2 50
execute positioned ~ ~-0.5 ~ run kill @n[type=item,distance=..5,nbt={Item:{id:"minecraft:barrel"}}]
execute positioned ~ ~-0.5 ~ run function light_green:enchantment_add/summon
kill @s