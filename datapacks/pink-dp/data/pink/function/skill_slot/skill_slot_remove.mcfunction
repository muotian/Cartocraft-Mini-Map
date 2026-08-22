#
scoreboard players operation $temp pink.id = @s pink.id
execute as @e[tag=pink_skill_slot] if score @s pink.id = $temp pink.id run kill @s

playsound minecraft:item.book.page_turn player @a ~ ~ ~ 1 1
playsound minecraft:block.lever.click player @a ~ ~ ~ 0.5 0.5

