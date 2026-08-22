execute at a11-0-0-1-3 run setblock ~ ~1 ~ air
execute at a11-0-0-1-4 run setblock ~ ~1 ~ air
execute at a11-0-0-1-3 run playsound minecraft:block.vault.insert_item_fail player @a ~ ~ ~ 2 1.2
schedule function ordered_splinter:npc/iron_bars/close_1 5s