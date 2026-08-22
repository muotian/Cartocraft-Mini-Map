execute at a11-0-0-1-3 run setblock ~ ~1 ~ iron_bars
execute at a11-0-0-1-4 run setblock ~ ~1 ~ iron_bars
execute at a11-0-0-1-3 run playsound minecraft:block.vault.place player @a ~ ~ ~ 2 0.8
schedule function ordered_splinter:npc/iron_bars/close_2 10t