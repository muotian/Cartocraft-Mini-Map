execute as @e[type=item] at @s if predicate green_wool:craft_detect_can_craft if block ~ ~-1 ~ dead_tube_coral_block run function green_wool:crafting/heavy_armour_upgrape/craft_type
execute as @e[type=item] at @s if predicate green_wool:craft_done_detect if block ~ ~-1 ~ dead_tube_coral_block run tp @s ~ ~14 ~
